import 'package:advanced/core/di/service_locator.dart';
import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/theming/app_stayle.dart';
import 'package:advanced/features/auth/presention/manager/sign_up/sign_up_cubit.dart';
import 'package:advanced/features/auth/presention/views/widget/sing_up/sign_up_form.dart';
import 'package:advanced/features/auth/presention/views/widget/sing_up/to_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/request_state/request_state.dart';
import '../../../../core/routing/rouets.dart';
import '../../../../core/theming/app_colors.dart';
import '../manager/auth_state.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SignUpCubit>(),
      child: Scaffold(
        body: BlocListener<SignUpCubit, AuthState>(
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
                Navigator.of(context).pop();
                Navigator.pushReplacementNamed(context, Routes.homeScreen);
              },
              error: (message) {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(message.toString())));
              },
            );
          },
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Create Account", style: AppStyle.text24BlueBold),
                      vSpace(17),
                      Text(
                        "Sign up now and start exploring...",
                        style: AppStyle.text14GryRegular,
                      ),
                      const SignUpForm(),
                      vSpace(32),
                      Divider(color: AppColors.gry),
                      ToLogin(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
