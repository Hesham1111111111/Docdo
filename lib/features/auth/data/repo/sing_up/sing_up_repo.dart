import 'package:advanced/core/networking/api_result.dart';
import 'package:advanced/features/auth/data/model/sing_up/sing_up_request.dart';
import 'package:advanced/features/auth/data/model/sing_up/sing_up_response.dart';

abstract class SingUpRepo {
  Future<ApiResult<SingUpResponse>> singUp(SingUpRequest singUpRequest);
}
