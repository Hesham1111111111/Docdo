import 'package:advanced/features/auth/data/model/auth_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/helpers/request_state/request_state.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(1) int currentCycle,
    @Default(InitialState()) RequestState<AuthModel> signUpState,
    @Default(InitialState()) RequestState<AuthModel> loginState,
    @Default(true) bool isObscure,
  }) = _AuthState;
}
