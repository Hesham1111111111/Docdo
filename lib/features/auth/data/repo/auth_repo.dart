import '../../../../core/networking/api_result.dart';
import '../model/auth_model.dart';

abstract class AuthRepo {
  Future<ApiResult<AuthModel>> login(AuthModel authModel);
  }