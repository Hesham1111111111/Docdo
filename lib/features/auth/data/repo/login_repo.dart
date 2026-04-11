import 'package:advanced/features/auth/data/model/login_request_body.dart';
import 'package:advanced/features/auth/data/model/login_response.dart';
import '../../../../core/networking/api_result.dart';

abstract class LoginRepo {
  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequest);
}
