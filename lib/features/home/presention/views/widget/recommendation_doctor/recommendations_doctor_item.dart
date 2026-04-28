import 'package:advanced/features/home/data/model/doctor_speciality_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/resources/assets.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_stayle.dart';

class RecommendationsDoctorItem extends StatelessWidget {
  final Doctor doctorsModel;

  const RecommendationsDoctorItem({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
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
                  Text(doctorsModel.name, style: AppStyle.text18BlackBold),
                  Text(
                    ' ${doctorsModel.degree} | ${doctorsModel.phone}',
                    style: AppStyle.text15PrimaryRegular.copyWith(
                      color: AppColors.gry,
                    ),
                  ),
                  Text(doctorsModel.email, style: AppStyle.text14GryRegular),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
