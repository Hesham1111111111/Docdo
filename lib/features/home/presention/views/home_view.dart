import 'package:advanced/core/di/service_locator.dart';
import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/features/home/presention/manager/home_cubit.dart';
import 'package:advanced/features/home/presention/manager/home_state.dart';
import 'package:advanced/features/home/presention/views/widget/doctor_blue_container.dart';
import 'package:advanced/features/home/presention/views/widget/doctor_speciality_list_view.dart';
import 'package:advanced/features/home/presention/views/widget/doctor_speciality_seeAll.dart';
import 'package:advanced/features/home/presention/views/widget/home_top_bar.dart';
import 'package:advanced/features/home/presention/views/widget/recommendation_doctor.dart';
import 'package:advanced/features/home/presention/views/widget/recommendationdoctor_listView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/request_state/request_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..doctorSpeciality(),

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
                BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (prev, curr) =>
                      prev.doctorSpecialityState != curr.doctorSpecialityState,
                  builder: (context, state) {
                    return state.doctorSpecialityState.maybeWhen(
                      orElse: () => const SizedBox(),
                      loading: () => const CircularProgressIndicator(),
                      success: (specialities) => DoctorSpecialityListView(
                        specialities: specialities.data,
                      ),
                      error: (error) => Text(error),
                    );
                  },
                ),
                vSpace(23),
                const RecommendationDoctor(),
                vSpace(12),
                BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (prev, curr) =>
                      prev.doctorSpecialityState != curr.doctorSpecialityState,
                  builder: (context, state) {
                    return state.doctorSpecialityState.maybeWhen(
                      orElse: () => const SizedBox(),
                      loading: () => const CircularProgressIndicator(),
                      success: (specialities) {
                        return RecommendationDoctorListView(
                          doctor: specialities.data
                              .expand((speciality) => speciality.doctors)
                              .toList(),
                        );
                      },

                      error: (error) => Text(error),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
