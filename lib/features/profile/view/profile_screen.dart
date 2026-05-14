import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/features/profile/view/widget/profile_image.dart';
import 'package:advanced/features/profile/view/widget/top_blue_area.dart';
import 'package:advanced/features/profile/view/widget/white_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),

      body: Stack(
        children: [
        const  TopBlueArea(),

        const  WhiteCard(),

         const ProfileImage(),
        ],
      ),

    );
  }
}

