import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/helpers/request_state/request_state.dart';
import '../../data/model/login_response.dart';
part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(1) int currentCycle,
    @Default(InitialState()) RequestState<LoginResponse> loginState,
  }) = _AuthState;
}
