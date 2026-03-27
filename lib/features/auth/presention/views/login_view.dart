import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/theming/app_colors.dart';
import 'package:advanced/core/theming/app_stayle.dart';
import 'package:advanced/features/auth/presention/views/widget/views/login/login_form.dart';
import 'package:advanced/features/auth/presention/views/widget/views/login/termes_and_condtions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 40.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Back", style: AppStyle.text24BlueBold),
              hSpace(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in..",
                style: AppStyle.text14GryRegular,
              ),
              vSpace(36),
              LoginForm(),
              vSpace(36),

              Divider(color: AppColors.gry),
              vSpace(36),
              TermesAndConditionsText(),
            ],
          ),
        ),
      ),
    );
  }
}
