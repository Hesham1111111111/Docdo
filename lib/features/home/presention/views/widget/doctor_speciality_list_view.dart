import 'package:advanced/features/home/data/model/doctor_speciality_model.dart';
import 'package:advanced/features/home/presention/views/widget/doctor_speciality_item.dart';
import 'package:flutter/material.dart';
class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key, required this.specialities});

  final List<Specialization> specialities;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: specialities.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),

        itemBuilder: (context, index) {
          return DoctorSpecialityItem(speciality: specialities[index]);
        },
      ),
    );
  }
}
