import 'package:advanced/core/theming/app_stayle.dart';
import 'package:advanced/features/onboarding/presntation/views/widget/doc_logo_and_name.dart';
import 'package:advanced/features/onboarding/presntation/views/widget/doctor_image_and_text.dart';
import 'package:advanced/features/onboarding/presntation/views/widget/get_start_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                        style: AppStyle.text13GryW400,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h),
                      const GetStartedButton(),
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
