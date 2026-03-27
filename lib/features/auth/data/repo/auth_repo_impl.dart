import 'package:advanced/core/networking/api_endpoints.dart';
import 'package:advanced/core/networking/api_result.dart';
import '../model/auth_model.dart';
import 'auth_repo.dart';
import '../../../../core/networking/api_client.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiClient apiClient;

  AuthRepoImpl(this.apiClient);

  @override
  Future<ApiResult<AuthModel>> login(AuthModel authModel) async {
    return await apiClient.request<AuthModel>(
      method: ApiMethods.POST,
      endpoint: ApiEndpoints.login,
      body: authModel.toJson(),
      response: (json) => AuthModel.fromJson(json),
    );
  }
}