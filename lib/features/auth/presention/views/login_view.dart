import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/theming/app_colors.dart';
import 'package:advanced/core/theming/app_stayle.dart';
import 'package:advanced/features/auth/presention/manager/login_cubit.dart';
import 'package:advanced/features/auth/presention/views/widget/views/login/login_bloc_listener.dart';
import 'package:advanced/features/auth/presention/views/widget/views/login/login_form.dart';
import 'package:advanced/features/auth/presention/views/widget/views/login/termes_and_condtions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/service_locator.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocProvider(
        create: (_) => getIt<LoginCubit>(),
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Back", style: AppStyle.text24BlueBold),

                    hSpace(8),

                    Text(
                      "We're excited to have you back, can't wait to see what you've been up to since you last logged in..",
                      style: AppStyle.text14GryRegular,
                    ),

                    vSpace(32),

                    const LoginForm(),
                  const LoginBlocListener(),

                    vSpace(32),

                    Divider(color: AppColors.gry),

                    vSpace(32),

                    const TermesAndConditionsText(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
