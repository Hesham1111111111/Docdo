import 'package:advanced/core/helpers/exetions.dart';
import 'package:advanced/core/theming/app_stayle.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/routing/rouets.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Doctor Speciality', style: AppStyle.text18BlackBold),
       const  Spacer(),
        InkWell(
          onTap: () {
            context.pushNamed(Routes.doctorSpecialitySeeAll);
          },

          child: Text("See All ", style: AppStyle.text14PrimaryBold),
        ),
      ],
    );
  }
}
