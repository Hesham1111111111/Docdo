import 'package:advanced/core/routing/rouets.dart';
import 'package:advanced/features/auth/presention/manager/auth_state.dart';
import 'package:advanced/features/auth/presention/manager/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/helpers/request_state/request_state.dart';
import '../../../../../../../core/theming/app_colors.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  bool _canPop(BuildContext context) {
    return Navigator.of(context, rootNavigator: true).canPop();
  }

  void _closeDialog(BuildContext context) {
    if (_canPop(context)) {
      Navigator.of(context, rootNavigator: true).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, AuthState>(
      listenWhen: (prev, curr) => prev.loginState != curr.loginState,
      listener: (context, state) {
        state.loginState.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => const Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
            );
          },

          success: (_) {
            _closeDialog(context);

            Navigator.pushReplacementNamed(context, Routes.homeScreen);
          },

          error: (message) {
            _closeDialog(context);

            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
