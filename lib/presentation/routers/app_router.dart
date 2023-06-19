import 'package:course_selling_app/common/exceptions/route_exception.dart';
import 'package:flutter/material.dart';

import '../modules/sign_in/sign_in_screen.dart';
import '../modules/welcome/welcome_screen.dart';

class AppRouter {
  static const String home = "/";

  // convert this to method to be called in main.dart
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        continue welcome;
      welcome:
      case WelcomeScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      signIn:
      case SignInScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const SignInScreen(),
        );
      default:
        throw const RouteException("Route not found");
    }
  }
}
