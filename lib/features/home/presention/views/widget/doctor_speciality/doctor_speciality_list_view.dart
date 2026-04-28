import 'package:advanced/features/home/data/model/doctor_speciality_model.dart';
import 'package:advanced/features/home/presention/views/widget/doctor_speciality/doctor_speciality_item.dart';
import 'package:advanced/features/home/presention/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({
    super.key,
    required this.specialities,
    required this.selectedId,
  });

  final List<Specialization> specialities;
  final int? selectedId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: specialities.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final item = specialities[index];

          return DoctorSpecialityItem(
            speciality: item,
            isSelected: item.id == selectedId,
            onTap: () {
              context
                  .read<HomeCubit>()
                  .selectSpecialization(item.id);
            },
          );
        },
      ),
    );
  }
}