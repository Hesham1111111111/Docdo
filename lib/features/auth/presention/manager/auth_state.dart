import 'package:advanced/features/auth/data/model/sing_up/sing_up_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/helpers/request_state/request_state.dart';
import '../../data/model/login/login_response.dart';
part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(1) int currentCycle,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    @Default(InitialState()) RequestState<LoginResponse> loginState,
    @Default(InitialState()) RequestState<SingUpResponse> signUpState,
  }) = _AuthState;
}
