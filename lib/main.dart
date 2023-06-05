import 'package:course_selling_app/presentation/sign_in/sign_in_screen.dart';
import 'package:course_selling_app/presentation/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        routes: {
          "/": (context) => const WelcomeScreen(),
          SignInScreen.routeName: (context) => const SignInScreen(),
        },
      ),
    );
  }
}
