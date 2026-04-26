import 'package:advanced/features/auth/data/model/login/login_request_body.dart';
import 'package:advanced/features/auth/data/repo/login/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helpers/request_state/request_state.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/dio_factory.dart';
import '../auth_state.dart';

class LoginCubit extends Cubit<AuthState> {
  LoginCubit(this.loginRepo) : super(const AuthState());

  final LoginRepo loginRepo;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> login() async {
    emit(state.copyWith(loginState: const LoadingState()));

    final result = await loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    await result.when(
      success: (data) async {
        final token = data.data.token;

        await DioFactory.updateAuthToken(token);

        emit(state.copyWith(loginState: SuccessState(data)));
      },
      failure: (error) async {
        emit(state.copyWith(loginState: ErrorState(error)));
      },
    );
  }

  void togglePasswordVisibility() {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
