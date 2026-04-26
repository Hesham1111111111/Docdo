import 'package:advanced/features/home/data/repo/home_repo.dart';
import 'package:advanced/features/home/presention/manager/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/request_state/request_state.dart';
import '../../../../core/networking/api_result.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.homeRepo}) : super(const HomeState());

  final HomeRepo homeRepo;

  void doctorSpeciality() {
    emit(state.copyWith(
      doctorSpecialityState: const LoadingState(),
    ));

    homeRepo.doctorSpeciality().then((result) {
      result.when(
        success: (data) {
          emit(state.copyWith(
            doctorSpecialityState: SuccessState(data),
          ));
        },
        failure: (error) {
          emit(state.copyWith(
            doctorSpecialityState: ErrorState(error),
          ));
        },
      );
    });
  }

}