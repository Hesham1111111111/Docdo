import 'package:advanced/core/helpers/exetions.dart';
import 'package:advanced/core/theming/app_stayle.dart';
import 'package:advanced/features/onboarding/presntation/views/widget/doc_logo_and_name.dart';
import 'package:advanced/features/onboarding/presntation/views/widget/doctor_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/rouets.dart';
import '../../../../core/widgets/custom_bottom.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(height: 41.h),
                DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        " Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        style: AppStyle.text13GryRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h),
                      CustomButton(
                        text: 'Get Started ',
                        onPressed: () {
                          context.pushNamed(Routes.loginScreen);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
