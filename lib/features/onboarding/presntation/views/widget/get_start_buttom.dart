
import 'package:advanced/core/helpers/exetions.dart';
import 'package:advanced/core/routing/rouets.dart';
import 'package:advanced/core/theming/app_colors.dart';
import 'package:advanced/core/theming/app_stayle.dart';
import 'package:flutter/material.dart';
class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Get Started",
            style: AppStyle.text16GryW600,
          ),
        ),
      ),
    );
  }
}
