import 'package:advanced/core/resources/assets.dart';
import 'package:advanced/core/theming/app_colors.dart';
import 'package:advanced/core/theming/app_stayle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello, Hesham !", style: AppStyle.text18DarkBlueBold),
            Text("How Are you Today ?", style: AppStyle.text14GryRegular),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.sp,
          backgroundColor: AppColors.moreLiterGray,
          child: SvgPicture.asset(AppSvg.notification),
        ),
      ],
    );
  }
}
