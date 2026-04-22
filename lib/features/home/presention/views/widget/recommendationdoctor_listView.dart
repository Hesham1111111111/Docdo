import 'package:advanced/core/resources/assets.dart';
import 'package:advanced/core/theming/app_colors.dart';
import 'package:advanced/core/theming/app_stayle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';

class RecommendationDoctorListView extends StatelessWidget {
  const RecommendationDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Image.asset(AppImages.nurse, width: 100.w, height: 100.h),
                  ],
                ),
                hSpace(12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dr. Ahmed Ali", style: AppStyle.text18BlackBold),
                      Text(
                        "Heart Surgeon",
                        style: AppStyle.text15PrimaryRegular.copyWith(
                          color: AppColors.gry,
                        ),
                      ),
                      Text(
                        "4.9 (124 Reviews)",
                        style: AppStyle.text14GryRegular,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
