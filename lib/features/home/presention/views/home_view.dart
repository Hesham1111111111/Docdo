import 'package:advanced/features/home/presention/views/widget/doctor_blue_container.dart';
import 'package:advanced/features/home/presention/views/widget/home_top_bar.dart';
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


              ]),
        ),
      ),
    );
  }
}
