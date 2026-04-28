import 'package:advanced/core/theming/app_stayle.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Doctor Speciality', style: AppStyle.text18BlackBold),
       const  Spacer(),
        InkWell(
          onTap: () {},

          child: Text("See All ", style: AppStyle.text14PrimaryBold),
        ),
      ],
    );
  }
}
