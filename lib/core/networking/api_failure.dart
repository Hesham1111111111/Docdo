import 'dart:io';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import '../helpers/locale_keys.dart';

abstract class Failure {
  final String message;

  const Failure(this.message);
}

/// Represents failures coming from server/API calls.
class ServerFailure extends Failure {
  const ServerFailure(super.errorMessage);

  /// Create a [ServerFailure] from a [DioException].
  factory ServerFailure.fromDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(LocaleKeys.connectionTimeout.tr());
      case DioExceptionType.sendTimeout:
        return ServerFailure(LocaleKeys.sendTimeout.tr());
      case DioExceptionType.receiveTimeout:
        return ServerFailure(LocaleKeys.receiveTimeout.tr());
      case DioExceptionType.badCertificate:
        return ServerFailure(LocaleKeys.badCertificate.tr());
      case DioExceptionType.cancel:
        return ServerFailure(LocaleKeys.cancelError.tr());
      case DioExceptionType.connectionError:
        return _isNetworkError(error)
            ? ServerFailure(LocaleKeys.noInternet.tr())
            : ServerFailure(LocaleKeys.connectionError.tr());
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          statusCode: error.response?.statusCode ?? 500,
          data: error.response?.data,
        );
      case DioExceptionType.unknown:
        return _isNetworkError(error)
            ? ServerFailure(LocaleKeys.noInternet.tr())
            : ServerFailure(LocaleKeys.unknown.tr());
    }
  }

  /// Create a [ServerFailure] from an HTTP [statusCode] and optional [data].
  factory ServerFailure.fromResponse({required int statusCode, dynamic data}) {
    final parsedMessage = _parseResponseMessage(data);
    switch (statusCode) {
      case 400:
        return ServerFailure(parsedMessage ?? LocaleKeys.badRequest.tr());
      case 401:
        return ServerFailure(parsedMessage ?? LocaleKeys.unauthorized.tr());
      case 403:
        return ServerFailure(parsedMessage ?? LocaleKeys.forbidden.tr());
      case 404:
        return ServerFailure(LocaleKeys.notFound.tr());
      case 408:
        return ServerFailure(LocaleKeys.requestTimeout.tr());
      case 500:
        return ServerFailure(LocaleKeys.internal.tr());
      case 503:
        return ServerFailure(LocaleKeys.serviceUnavailable.tr());
      default:
        return ServerFailure(
          '${tr(LocaleKeys.unknown.tr())} (HTTP $statusCode)',
        );
    }
  }

  // —————— Private Helpers ——————

  /// Parses various shapes of error payloads to extract a user-friendly message.
  static String? _parseResponseMessage(dynamic data) {
    if (data == null) return null;

    if (data is String && data.isNotEmpty) {
      return data;
    }

    if (data is List && data.isNotEmpty) {
      return data.first.toString();
    }

    if (data is Map<String, dynamic>) {
      // 1) check for an "errors" array
      if (data['errors'] is List && (data['errors'] as List).isNotEmpty) {
        final first = (data['errors'] as List).first;
        if (first is Map && first['value'] is String) {
          return first['value'] as String;
        }
        return first.toString();
      }

      // 2) check “message” then “data” fields
      final msg = data['message']?.toString();
      if (msg != null && msg.isNotEmpty) return msg;

      final inner = data['data']?.toString();
      if (inner != null && inner.isNotEmpty) return inner;
    }

    return null;
  }

  /// Detects network-level errors masquerading as DioExceptions.
  static bool _isNetworkError(DioException error) {
    return error.error is SocketException ||
        (error.message?.contains('SocketException') ?? false);
  }
}
