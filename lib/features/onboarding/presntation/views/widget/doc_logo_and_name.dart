import 'package:advanced/core/resources/assets.dart';
import 'package:advanced/core/theming/app_stayle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppSvg.logo),
        SizedBox(width: 10.w),
        Text("DocDoc",
        style: AppStyle.text24BlackBold,
        ),
      ],
    );
  }
}
