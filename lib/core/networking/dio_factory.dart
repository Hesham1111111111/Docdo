import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

// ignore: depend_on_referenced_packages
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../shared_pref/shared_pref_helper.dart';
import 'api_endpoints.dart';

/// A singleton factory class for configuring and managing a Dio instance.
class DioFactory {
  DioFactory._();

  static const _timeout = Duration(seconds: 60);

  static Dio? _dio;
  static String? _token;
  static String? _lang;

  static Dio get dio {
    if (_dio == null) {
      throw Exception('Call initialize() first');
    }
    return _dio!;
  }

  static Future<void> initialize() async {
    if (_dio != null) return;

    _token = await SharedPrefHelper.getSecuredString(
      key: SharedPrefKeys.token,
    );

    _lang = await SharedPrefHelper.getSecuredString(
      key: SharedPrefKeys.langCode,
    );

    _dio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        connectTimeout: _timeout,
        receiveTimeout: _timeout,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );

    _dio!.interceptors.add(_authInterceptor());

    if (kDebugMode) {
      _dio!.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          responseBody: true,
        ),
      );
    }
  }

  static InterceptorsWrapper _authInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        if (_token?.isNotEmpty ?? false) {
          options.headers['Authorization'] = 'Bearer $_token';
        }

        if (_lang?.isNotEmpty ?? false) {
          options.headers['Accept-Language'] = _lang;
        }

        handler.next(options);
      },

      onError: (error, handler) async {
        // مثال بسيط لو عايز تعمل refresh token
        if (error.response?.statusCode == 401) {
          // ممكن تضيف logic هنا
        }
        handler.next(error);
      },
    );
  }

  static Future<void> updateToken(String token) async {
    _token = token;
    await SharedPrefHelper.setSecuredString(
      key: SharedPrefKeys.token,
      value: token,
    );
  }

  static Future<void> updateLang(String lang) async {
    _lang = lang;
    await SharedPrefHelper.setSecuredString(
      key: SharedPrefKeys.langCode,
      value: lang,
    );
  }

  static Future<void> clearAuth() async {
    _token = null;
    await SharedPrefHelper.removeSecureData(
      key: SharedPrefKeys.token,
    );
  }
}