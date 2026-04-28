import 'package:advanced/features/home/data/model/doctor_speciality_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/resources/assets.dart';

class DoctorSpecialityItem extends StatelessWidget {
  final Specialization speciality;
  final VoidCallback onTap;
  final bool isSelected;

  const DoctorSpecialityItem({
    super.key,
    required this.speciality,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor:
            isSelected ? Colors.blue : Colors.grey[200],
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

          Text(
            speciality.name,
            style: TextStyle(
              fontSize: 13,
              color: isSelected ? Colors.blue : Colors.black,
              fontWeight:
              isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}