import 'package:advanced/core/networking/api_result.dart';

import '../model/doctor_speciality_model.dart';

abstract class HomeRepo {
  Future<ApiResult<SpecializationResponse>> doctorSpeciality();
}
