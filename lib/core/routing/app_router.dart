import 'package:advanced/core/routing/rouets.dart';
import 'package:advanced/features/auth/presention/views/login_view.dart';
import 'package:advanced/features/auth/presention/views/register.dart';
import 'package:advanced/features/home/presention/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/presntation/views/onboarding_screen.dart';

class AppRouter {
  Route generateRout(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeView());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignUp());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(body: Center(child: Text("No route define "))),
        );
    }
  }
}
