import 'package:advanced/features/auth/data/model/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/helpers/request_state/request_state.dart';

part 'login_state.freezed.dart';

@freezed
class AuthState with _$AduthState {
  const factory AuthState({
    @Default(1) int currentCycle,
    @Default(InitialState()) RequestState<LoginResponse> signUpState,
    @Default(InitialState()) RequestState<LoginResponse> loginState,
    @Default(true) bool isObscure,
  }) = _AuthState;
}
