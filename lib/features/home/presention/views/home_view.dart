import 'package:advanced/core/di/service_locator.dart';
import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/features/home/presention/manager/home_cubit.dart';
import 'package:advanced/features/home/presention/views/widget/doctor_blue_container.dart';
import 'package:advanced/features/home/presention/views/widget/doctor_speciality/doctor_speciality_seeAll.dart';
import 'package:advanced/features/home/presention/views/widget/doctor_speciality/doctor_specialty_bolc_.dart';
import 'package:advanced/features/home/presention/views/widget/home_top_bar.dart';
import 'package:advanced/features/home/presention/views/widget/recommendation_doctor/recommendation_doctor.dart';
import 'package:advanced/features/home/presention/views/widget/recommendation_doctor/recommendation_doctor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
    const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getDoctorSpecialities(),

      child: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
            child: Column(
              children: [
                const HomeTopBar(),
                const DoctorBlueContainer(),
                vSpace(24),
                const DoctorSpecialitySeeAll(),
                vSpace(23),
                DoctorSpecialtyBloc(),
                const RecommendationDoctor(),
                vSpace(12),
                RecommendationDoctorBloc(),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
