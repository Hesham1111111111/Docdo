import 'package:advanced/features/home/presention/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/di/service_locator.dart';
import 'doctor_specialty_bolc_.dart';

class DoctorSpecialitySeeAllScreen extends StatelessWidget {
  const DoctorSpecialitySeeAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getDoctorSpecialities(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Doctor Specialities')),
        body: GridView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return Card(child: Center(child: DoctorSpecialtyBloc()));
          },
        ),
      ),
    );
  }
}
