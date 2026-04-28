import 'package:advanced/features/home/data/model/doctor_speciality_model.dart';
import 'package:advanced/features/home/data/repo/home_repo.dart';
import 'package:advanced/features/home/presention/manager/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/request_state/request_state.dart';
import '../../../../core/networking/api_result.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.homeRepo}) : super(const HomeState());

  final HomeRepo homeRepo;

  List<Specialization> specializations = [];

  Future<void> getDoctorSpecialities() async {
    emit(state.copyWith(doctorSpecialityState: const LoadingState()));

    final result = await homeRepo.doctorSpeciality();

    result.when(
      success: (data) {
        specializations = data.data;

        emit(state.copyWith(doctorSpecialityState: SuccessState(data)));
      },
      failure: (error) {
        emit(state.copyWith(doctorSpecialityState: ErrorState(error.message)));
      },
    );
  }

  void selectSpecialization(int specializationId) {
    emit(state.copyWith(selectedSpecializationId: specializationId));
    getDocList(specializationId: specializationId);
  }

  void getDocList({required int specializationId}) {
    if (specializations.isEmpty) {
      emit(state.copyWith(doctors: const ErrorState("No data loaded yet")));
      return;
    }

    emit(state.copyWith(doctors: const LoadingState()));

    final doctorsList = filterSpecializationDoctors(specializationId);

    if (doctorsList.isEmpty) {
      emit(state.copyWith(doctors: const ErrorState("No doctors found")));
      return;
    }

    emit(state.copyWith(doctors: SuccessState(doctorsList)));
  }

  List<Doctor> filterSpecializationDoctors(int specializationId) {
    final spec = specializations.firstWhere(
      (spec) => spec.id == specializationId,
      orElse: () => Specialization(id: 0, name: '', doctors: []),
    );

    return spec.doctors ?? [];
  }
}
