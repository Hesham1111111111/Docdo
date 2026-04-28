import 'package:advanced/features/home/presention/views/widget/recommendation_doctor/recommendationdoctor_listView.dart';
import 'package:advanced/features/home/presention/views/widget/recommendation_doctor/recommendations_doctor_shimmer_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/request_state/request_state.dart';
import '../../../manager/home_cubit.dart';
import '../../../manager/home_state.dart';

class RecommendationDoctorBloc extends StatelessWidget {
  const RecommendationDoctorBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (prev, curr) =>
      prev.doctors != curr.doctors,

      builder: (context, state) {
        return state.doctors.maybeWhen(
          loading: () => const RecommendationsDoctorShimmerList(),

          success: (doctors) {
            return RecommendationDoctorListView(
              doctor: doctors,
            );
          },

          error: (error) => Text(error),

          orElse: () => const SizedBox(),
        );
      },
    );  }
}
