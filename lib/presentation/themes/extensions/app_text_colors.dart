// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_text_colors.tailor.dart';

/// theme extension what is used for accessing colors from Theme.of(context)
@TailorMixin()
class AppTextColors extends ThemeExtension<AppTextColors>
    with _$AppTextColorsTailorMixin {
  @override
  final Color primaryText;
  @override
  final Color primaryElementText;

  @override
  final Color primarySecondaryElementText;
  @override
  final Color primaryThreeElementText;
  @override
  final Color primaryFourElementText;

  const AppTextColors({
    required this.primaryText,
    required this.primaryElementText,
    required this.primarySecondaryElementText,
    required this.primaryThreeElementText,
    required this.primaryFourElementText,
  });
}
