import 'package:advanced/core/routing/app_router.dart';
import 'package:advanced/core/routing/rouets.dart';
import 'package:advanced/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DocDoc extends StatelessWidget {
  const DocDoc({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Doc App",
        theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onboarding,
        onGenerateRoute: appRouter.generateRout,
      ),
    );
  }
}
