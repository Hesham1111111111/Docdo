import 'package:dartz/dartz.dart' show Right, Left;
import 'package:dio/dio.dart';

import 'api_failure.dart';
import 'api_services.dart';

enum ApiMethods { GET, POST, PUT, DELETE, PATCH }

class ApiClient {
  final ApiService apiService;

  ApiClient(this.apiService);

  Future<dynamic> request<T>({
    required ApiMethods method,
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    dynamic body,
    Map<String, dynamic>? headers,
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
          responseData =
          await apiService.post(endpoint: endpoint, data: body);
          break;

        case ApiMethods.PUT:
          responseData = await apiService.put(
            endpoint: endpoint,
            queryParameters: queryParameters,
            data: body,
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
            queryParameters: queryParameters,
            data: body,
          );
          break;
      }

      return Right(response(responseData));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}