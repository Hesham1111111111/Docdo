import 'package:advanced/core/networking/api_endpoints.dart';
import 'package:advanced/core/networking/api_result.dart';
import 'package:advanced/features/home/data/model/doctor_speciality_model.dart';
import 'package:advanced/features/home/data/repo/home_repo.dart';

import '../../../../core/networking/api_client.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiClient apiClient;

  HomeRepoImpl({required this.apiClient});

  @override
  Future<ApiResult<SpecializationResponse>> doctorSpeciality() {
    return apiClient.request(
        method: ApiMethods.GET,
        endpoint: ApiEndpoints.specialization,
        response: (json) => SpecializationResponse.fromJson(json));
  }
}