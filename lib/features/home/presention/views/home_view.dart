import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/features/home/presention/views/widget/doctor_blue_container.dart';
import 'package:advanced/features/home/presention/views/widget/doctor_speciality_list_view.dart';
import 'package:advanced/features/home/presention/views/widget/doctor_speciality_seeAll.dart';
import 'package:advanced/features/home/presention/views/widget/home_top_bar.dart';
import 'package:advanced/features/home/presention/views/widget/recommendation_doctor.dart';
import 'package:advanced/features/home/presention/views/widget/recommendationdoctor_listView.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
              children: [
                const HomeTopBar(),
                const DoctorBlueContainer (),
                vSpace(24),
                const DoctorSpecialitySeeAll (),
                const DoctorSpecialityListView (),
                vSpace(23),
                const RecommendationDoctor(),
                vSpace(12),
                const RecommendationDoctorListView(),









              ]),
        ),
      ),
    );
  }
}
