import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/theming/app_stayle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/assets.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0.r),
              image: DecorationImage(
                image: AssetImage(AppImages.background),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: AppStyle.text18WhiteMedium,
                ),
                vSpace(15.0),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.0.w,
                      vertical: 11.0.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    child: Text(
                      'Find Nearby',
                      style: AppStyle.text15PrimaryRegular,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16.0.w,
            top: 0,
            child: Image.asset(AppImages.nurse, height: 197.h, width: 136.w),
          ),
        ],
      ),
    );
  }
}
