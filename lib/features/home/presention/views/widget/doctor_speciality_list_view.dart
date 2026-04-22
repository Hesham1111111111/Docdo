import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/resources/assets.dart';
import '../../../../../core/theming/app_colors.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          children: [
            CircleAvatar(
              radius: 32.sp,
              backgroundColor: AppColors.moreLiterGray,
              child: Image.asset(AppImages.test),
            ),
            SizedBox(height: 8.h),
            Text("Dentist", style: TextStyle(fontSize: 14.sp)),
          ],
        ),
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
        itemCount: 10,
      ),
    );
  }
}
