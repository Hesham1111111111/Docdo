import 'package:advanced/features/home/data/model/doctor_speciality_model.dart';
import 'package:advanced/features/home/presention/views/widget/recommendations_doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorListView extends StatelessWidget {
  final List<Doctor> doctor;

  const RecommendationDoctorListView({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        itemCount: doctor.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return RecommendationsDoctorItem(doctorsModel: doctor[index]);
        },
      ),
    );
  }
}
