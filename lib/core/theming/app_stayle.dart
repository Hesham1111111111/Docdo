import 'package:advanced/core/theming/fonts_weight.dart';
import 'package:flutter/material.dart';
import 'package:advanced/core/theming/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static TextStyle text24BlackBold = TextStyle(
    fontSize: 24.sp,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );  static TextStyle text18DarkBlueBold = TextStyle(
    fontSize: 18.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeight.bold,
  );static TextStyle text18BlackBold = TextStyle(
    fontSize: 18.sp,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );static TextStyle text18WhiteMedium = TextStyle(
    fontSize: 18.sp,
    color: AppColors.white,
    fontWeight: FontWeight.bold,
  );
  static TextStyle text32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  ); static TextStyle text24BlueBold = TextStyle(
    fontSize: 32.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle text13GryRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.gry,
    fontWeight: FontWeightHelper.regular,
  );static TextStyle text12PrimaryRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.primary,
    fontWeight: FontWeightHelper.regular,
  );static TextStyle text15PrimaryRegular = TextStyle(
    fontSize: 15.sp,
    color: AppColors.primary,
    fontWeight: FontWeightHelper.regular,
  );static TextStyle text14GryRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.gry,
    fontWeight: FontWeightHelper.regular,
  );static TextStyle text14PrimaryBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.primary,
    fontWeight: FontWeightHelper.bold,
  );static TextStyle text14LightGryRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.lightGray,
    fontWeight: FontWeightHelper.regular,
  );static TextStyle text14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle text16GrySemiBold = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle style16Medium({Color? color}) {
    return TextStyle(
      fontSize: 16.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.medium,
    );
  }
  static TextStyle style14Regular({Color? color}) {
    return TextStyle(
      fontSize: 14.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.regular,
    );
  }
  static TextStyle style18Medium({Color? color}) {
    return TextStyle(
      fontSize: 18.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.medium,
    );
  }



}