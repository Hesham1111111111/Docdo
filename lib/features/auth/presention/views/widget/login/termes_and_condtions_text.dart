import 'package:advanced/core/helpers/exetions.dart';
import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/theming/app_stayle.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/routing/rouets.dart';

class TermesAndConditionsText extends StatelessWidget {
  const TermesAndConditionsText({super.key, required this.text, required this.onTap});

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,

          text: TextSpan(
            children: [
              TextSpan(
                text: "By logging, you agree to our ",
                style: AppStyle.text13GryRegular,
              ),
              TextSpan(
                text: "Terms & Conditions",
                style: AppStyle.text14DarkBlueMedium,
              ),
              TextSpan(text: " and ", style: AppStyle.text13GryRegular),
              TextSpan(
                text: "Privacy Policy.",
                style: AppStyle.text14DarkBlueMedium,
              ),
            ],
          ),
        ),
        vSpace(20),
        Row(
          children: [
            Text(
              "  Already have an account yet? ",
              style: AppStyle.text14GryRegular,
            ),
            InkWell(
              onTap: onTap,
              child: Text(text, style: AppStyle.text14PrimaryBold),
            ),
          ],
        ),
      ],
    );
  }
}
