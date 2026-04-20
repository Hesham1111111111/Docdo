import 'package:advanced/core/helpers/request_state/request_state.dart';
import 'package:advanced/features/auth/presention/manager/auth_state.dart';
import 'package:advanced/features/auth/presention/manager/sign_up/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/routing/rouets.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  void _closeDialog(BuildContext context) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, AuthState>(
      listenWhen: (prev, curr) => prev.signUpState != curr.signUpState,
      listener: (context, state) {
        state.signUpState.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) =>
              const Center(child: CircularProgressIndicator()),
            );
          },
          success: (_) {
            _closeDialog(context);
            Navigator.pushReplacementNamed(context, Routes.homeScreen);
          },
          error: (message) {
            _closeDialog(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message.toString())),
            );
          },
        );
      },
    );
  }
}