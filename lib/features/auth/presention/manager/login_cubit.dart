import 'package:advanced/core/networking/api_result.dart';
import 'package:advanced/features/auth/data/model/login_request_body.dart';
import 'package:advanced/features/auth/data/repo/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/request_state/request_state.dart';
import 'auth_state.dart';

class LoginCubit extends Cubit {
  LoginCubit(this.loginRepo) : super(const InitialState());
  final LoginRepo loginRepo;

  Future<void> login(LoginRequestBody loginRequest) async {
    emit(state.copyWith(loginState: const RequestState.loading()));
    final result = await loginRepo.login(loginRequest);
    result.when(
      success: (data) =>
          emit(state.copyWith(loginState: RequestState.success(data))),
      failure: (error) =>
          emit(state.copyWith(loginState: RequestState.error(error))),
    );
  }
}
