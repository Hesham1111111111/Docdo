import 'package:advanced/features/auth/data/model/sing_up/sing_up_request.dart';
import 'package:advanced/features/auth/data/repo/sing_up/sing_up_repo.dart';
import 'package:advanced/features/auth/presention/manager/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/request_state/request_state.dart';
import '../../../../../core/networking/api_result.dart';

class SignUpCubit extends Cubit<AuthState> {
  SignUpCubit({required this.singUpRepo}) : super(const AuthState());
  final SingUpRepo singUpRepo;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void signUp() async {
    emit(state.copyWith(signUpState: const LoadingState()));
    final result = await singUpRepo.singUp(
      SingUpRequest(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        phone: phoneController.text,
        gender: 0,
      ),
    );
    result.when(
      success: (data) {
        emit(state.copyWith(signUpState: SuccessState(data)));
      },
      failure: (error) {
        emit(state.copyWith(signUpState: ErrorState(error)));
      },
    );

  }
  void togglePasswordVisibility() {
    emit(state.copyWith(
      isPasswordVisible: !state.isPasswordVisible,
    ));
  }

  void toggleConfirmPasswordVisibility() {
    emit(state.copyWith(
      isConfirmPasswordVisible:
      !state.isConfirmPasswordVisible,
    ));
  }
}
