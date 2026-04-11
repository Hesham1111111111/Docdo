import 'package:advanced/core/networking/api_endpoints.dart';
import 'package:advanced/core/networking/api_result.dart';
import 'package:advanced/features/auth/data/model/login_request_body.dart';
import 'package:advanced/features/auth/data/model/login_response.dart';
import '../../../../core/networking/api_client.dart';
import 'login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  final ApiClient apiClient;

  LoginRepoImpl(this.apiClient);

  @override
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequest,
      ) {
    return apiClient.request<LoginResponse>(
      method: ApiMethods.POST,
      endpoint: ApiEndpoints.login,
      body: loginRequest.toJson(),
      response: (json) => LoginResponse.fromJson(json),
    );
  }
}