import 'package:course_selling_app/presentation/themes/extensions/app_text_colors.dart';
import 'package:course_selling_app/presentation/themes/colors.dart';
import 'package:course_selling_app/presentation/themes/extensions/specific_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  //secondary background color
  static final lightTheme = ThemeData.light().copyWith(
      useMaterial3: true,
      colorScheme: const ColorScheme.light().copyWith(
          background: primaryBackground,
          secondary: primarySecondaryBackground,
          primary: primaryElement),
      extensions: <ThemeExtension<dynamic>>{
        const SpecificColors(
          primaryBackground: primaryBackground,
          primarySecondaryBackground: primarySecondaryBackground,
          primaryElement: primaryElement,
          primaryVideoBackgroundColor: primaryVideoBackgroundColor,
          primaryElementStatusOk: primaryElementStatusOk,
          primaryElementStatusError: primaryElementStatusError,
          border: border,
        ),
        const AppTextColors(
            primaryText: primaryText,
            primaryElementText: primaryElementText,
            primarySecondaryElementText: primarySecondaryElementText,
            primaryThreeElementText: primaryThreeElementText,
            primaryFourElementText: primaryFourElementText),
      });

  static final darkTheme = ThemeData.dark().copyWith(useMaterial3: true);

  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    late final SystemUiOverlayStyle systemUiOverlay;

    if (themeMode == ThemeMode.light) {
      systemUiOverlay = SystemUiOverlayStyle.light;
    } else {
      systemUiOverlay = SystemUiOverlayStyle.dark;
    }

    SystemChrome.setSystemUIOverlayStyle(systemUiOverlay);
  }
}
