import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/exetions.dart';
import '../../../../../../core/routing/rouets.dart';
import '../../../../../../core/theming/app_stayle.dart';

class ToLogin extends StatelessWidget {
  const ToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0.w),
      child: Row(
        children: [
          Text(
            "  Already have an account yet? ",
            style: AppStyle.text14GryRegular,
          ),
          InkWell(
            onTap: () {
              context.pushNamed(Routes.loginScreen);
            },
            child: Text("Login", style: AppStyle.text14PrimaryBold),
          ),
        ],
      ),
    );
  }
}
