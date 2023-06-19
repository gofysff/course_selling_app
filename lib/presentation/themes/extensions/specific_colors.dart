import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';
part 'specific_colors.tailor.dart';

@TailorMixin()
class SpecificColors extends ThemeExtension<SpecificColors>
    with _$SpecificColorsTailorMixin {
  @override
  final Color primaryBackground;

  /// grey background
  @override
  final Color primarySecondaryBackground;

  /// main widget color blue
  @override
  final Color primaryElement;

  @override
  final Color primaryVideoBackgroundColor;
  @override
  final Color primaryElementStatusOk;
  @override
  final Color primaryElementStatusError;
  @override
  final Color border;

  const SpecificColors({
    required this.primaryBackground,
    required this.primarySecondaryBackground,
    required this.primaryElement,
    required this.primaryVideoBackgroundColor,
    required this.primaryElementStatusOk,
    required this.primaryElementStatusError,
    required this.border,
  });
}
