import 'package:advanced/core/networking/api_result.dart';
import 'package:advanced/features/auth/data/model/auth_model.dart';
import 'package:advanced/features/auth/data/repo/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/request_state/request_state.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit {
  AuthCubit(this.authRepo) : super(const AuthState());
  final AuthRepo authRepo;

  Future<void> login(AuthModel authModel) async {
    emit(state.copyWith(loginState: const RequestState.loading()));
    final result = await authRepo.login(authModel);
    result.when(
      success: (data) =>
          emit(state.copyWith(loginState: RequestState.success(data))),
      failure: (error) =>
          emit(state.copyWith(loginState: RequestState.error(error))),
    );
  }
}
