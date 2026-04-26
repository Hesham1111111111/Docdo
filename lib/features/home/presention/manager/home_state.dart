import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/helpers/request_state/request_state.dart';
import '../../data/model/doctor_speciality_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(InitialState())
    RequestState<SpecializationResponse> doctorSpecialityState,

  }) = _HomeState;
}