import 'package:advanced/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

class TopBlueArea extends StatelessWidget {
  const TopBlueArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: double.infinity,
      decoration: const BoxDecoration(color: Color(0xFF247CFF)),

      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),

          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back_ios, color: Colors.white),

                Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Icon(Icons.settings_outlined, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
