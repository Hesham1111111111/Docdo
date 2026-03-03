import 'package:advanced/core/resources/assets.dart';
import 'package:advanced/core/theming/app_stayle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppSvg.logoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(AppImages.doc),
        ),
        Positioned(
          bottom: 0,
          left: 80,
          child: Text(
            '    Best Doctor\nAppointment App',
            style: AppStyle.text32BlueBold.copyWith(height: 1.4.h),
          ),
        ),
      ],
    );
  }
}
