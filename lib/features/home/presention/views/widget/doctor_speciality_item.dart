import 'package:advanced/features/home/data/model/doctor_speciality_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/resources/assets.dart';

class DoctorSpecialityItem extends StatelessWidget {
  final Specialization speciality;

  const DoctorSpecialityItem({
    super.key,
    required this.speciality,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[200],
          child: ClipOval(
            child: Image.asset(
              AppImages.test,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(speciality.name, style: const TextStyle(fontSize: 13)),
      ],
    );
    ;
  }
}
