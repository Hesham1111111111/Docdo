import 'package:advanced/core/networking/api_result.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import '../helpers/locale_keys.dart';
import 'api_failure.dart';
import 'api_services.dart';

enum ApiMethods { GET, POST, PUT, DELETE, PATCH }

class ApiClient {
  final ApiService apiService;

  ApiClient(this.apiService);

  Future<ApiResult<T>> request<T>({
    required ApiMethods method,
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    dynamic body,
    required T Function(dynamic json) response,
  }) async {
    try {
      dynamic responseData;

      switch (method) {
        case ApiMethods.GET:
          responseData = await apiService.get(
            endpoint: endpoint,
            queryParameters: queryParameters,
          );
          break;

        case ApiMethods.POST:
          responseData = await apiService.post(
            endpoint: endpoint,
            data: body,
          );
          break;

        case ApiMethods.PUT:
          responseData = await apiService.put(
            endpoint: endpoint,
            data: body,
            queryParameters: queryParameters,
          );
          break;

        case ApiMethods.DELETE:
          responseData = await apiService.delete(
            endpoint: endpoint,
            queryParameters: queryParameters,
          );
          break;

        case ApiMethods.PATCH:
          responseData = await apiService.patch(
            endpoint: endpoint,
            data: body,
            queryParameters: queryParameters,
          );
          break;
      }

      // 🛑 Empty response check
      if (responseData == null) {
        return ApiResult.failure("Empty response from server");
      }

      // 🛑 Safe parsing layer
      try {
        final parsed = response(responseData);
        return ApiResult.success(parsed);
      } catch (_) {
        return ApiResult.failure("Data parsing failed");
      }
    }

    // 🔥 Main error handling (your ServerFailure)
    on DioException catch (e) {
      return ApiResult.failure(
        ServerFailure.fromDioException(e).message,
      );
    }

    // 🔥 fallback unexpected errors
    catch (_) {
      return ApiResult.failure(
        ServerFailure(LocaleKeys.unknown.tr()).message,
      );
    }
  }
}