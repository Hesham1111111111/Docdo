import 'package:flutter/material.dart';
import 'package:advanced/core/theming/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static TextStyle text24BlackBold = TextStyle(
    fontSize: 24.sp,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );
  static TextStyle text32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );  static TextStyle text13GryW400 = TextStyle(
    fontSize: 13.sp,
    color: AppColors.gry,
    fontWeight: FontWeight.w400,
  ); static TextStyle text16GryW600 =  TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

}
