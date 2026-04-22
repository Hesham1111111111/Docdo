import 'package:flutter/material.dart';

import '../../../../../core/theming/app_stayle.dart';
class RecommendationDoctor extends StatelessWidget {
  const RecommendationDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Recommendation Doctor', style: AppStyle.text18BlackBold),
        const  Spacer(),
        InkWell(
          onTap: () {},

          child: Text("See All ", style: AppStyle.text14PrimaryBold),
        ),
      ],
    );
  }
}
