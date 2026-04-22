import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  static const Color primary = Color(0xFF247CFF);
  static const Color gry = Color(0xFF757575);
  static const Color black = Color(0xFF242424);
  static const Color lightGray = Color(0xFFE0E0E0);
  static const Color white = Color(0xFFFFFFFF);
  static const Color lighterGray = Color(0xFFF5F5F5);
  static const Color darkBlue = Color(0xFF242424);
  static const Color moreLightGray = Color(0xFFF0F0F0);
  static const Color background = Color(0xffFFFFFF);
  static const Color mainText = Color(0xff0F0F0F);
  static const Color secondaryText = Color(0xff544F4F);
  static const Color green = Color(0xff65B111);
  static const Color error = Color(0xffC8383A);
  static const Color primary2 = Color(0xff064198);
  static const Color lightPrimary = Color(0xffC388B3);
  static const Color fieldFillColor = Color(0xffECECEC);
  static const Color icon = Color(0xff9B9B9B);
  static const Color border = Color(0xffDBD5D5);
  static const Color card = Color(0xffF1F1F1);
  static const Color icon2 = Color(0xff7C7C7C);
  static const Color moreLiterGray = Color(0xffF8F8F8);

  static const Gradient appGradient = LinearGradient(
    colors: [
      AppColors.primary2,
      AppColors.primary,
    ],
  );
}
