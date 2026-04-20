import 'package:advanced/core/networking/api_client.dart';
import 'package:advanced/core/networking/api_endpoints.dart';
import 'package:advanced/core/networking/api_result.dart';
import 'package:advanced/features/auth/data/model/sing_up/sing_up_request.dart';
import 'package:advanced/features/auth/data/model/sing_up/sing_up_response.dart';
import 'package:advanced/features/auth/data/repo/sing_up/sing_up_repo.dart';

class SignUpRepoImpl implements SingUpRepo {
  final ApiClient apiClient;

  SignUpRepoImpl(this.apiClient);

  @override
  Future<ApiResult<SingUpResponse>> singUp(SingUpRequest singUpRequest) {
    return apiClient.request(
      method: ApiMethods.POST,
      endpoint: ApiEndpoints.register,
      body: singUpRequest.toJson(),
      response: (json) => SingUpResponse.fromeJson(json),
    );
  }
}
