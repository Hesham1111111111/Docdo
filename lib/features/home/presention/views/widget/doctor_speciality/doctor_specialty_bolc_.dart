import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/error_view.dart';
import '../../../../../../core/helpers/request_state/request_state.dart';
import '../../../manager/home_cubit.dart';
import '../../../manager/home_state.dart';
import 'doctor_speciality_item_shimmer.dart';
import 'doctor_speciality_list_view.dart';

class DoctorSpecialtyBloc extends StatelessWidget {
  const DoctorSpecialtyBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (prev, curr) =>
      prev.doctorSpecialityState != curr.doctorSpecialityState ||
          prev.selectedSpecializationId != curr.selectedSpecializationId,
      builder: (context, state) {
        return state.doctorSpecialityState.maybeWhen(
          orElse: () => const SizedBox(),
          loading: () => const DoctorSpecialityShimmerList(),

          success: (specialities) {
            return DoctorSpecialityListView(
              specialities: specialities.data,
              selectedId: state.selectedSpecializationId,
            );
          },

          error: (error) => ErrorView(
            message: error,
            onRetry: () =>
                context.read<HomeCubit>().getDoctorSpecialities(),
          ),
        );
      },
    );
  }
}