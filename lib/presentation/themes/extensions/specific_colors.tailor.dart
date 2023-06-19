// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'specific_colors.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$SpecificColorsTailorMixin on ThemeExtension<SpecificColors> {
  Color get primaryBackground;
  Color get primarySecondaryBackground;
  Color get primaryElement;
  Color get primaryVideoBackgroundColor;
  Color get primaryElementStatusOk;
  Color get primaryElementStatusError;
  Color get border;

  @override
  SpecificColors copyWith({
    Color? primaryBackground,
    Color? primarySecondaryBackground,
    Color? primaryElement,
    Color? primaryVideoBackgroundColor,
    Color? primaryElementStatusOk,
    Color? primaryElementStatusError,
    Color? border,
  }) {
    return SpecificColors(
      primaryBackground: primaryBackground ?? this.primaryBackground,
      primarySecondaryBackground:
          primarySecondaryBackground ?? this.primarySecondaryBackground,
      primaryElement: primaryElement ?? this.primaryElement,
      primaryVideoBackgroundColor:
          primaryVideoBackgroundColor ?? this.primaryVideoBackgroundColor,
      primaryElementStatusOk:
          primaryElementStatusOk ?? this.primaryElementStatusOk,
      primaryElementStatusError:
          primaryElementStatusError ?? this.primaryElementStatusError,
      border: border ?? this.border,
    );
  }

  @override
  SpecificColors lerp(
      covariant ThemeExtension<SpecificColors>? other, double t) {
    if (other is! SpecificColors) return this as SpecificColors;
    return SpecificColors(
      primaryBackground:
          Color.lerp(primaryBackground, other.primaryBackground, t)!,
      primarySecondaryBackground: Color.lerp(
          primarySecondaryBackground, other.primarySecondaryBackground, t)!,
      primaryElement: Color.lerp(primaryElement, other.primaryElement, t)!,
      primaryVideoBackgroundColor: Color.lerp(
          primaryVideoBackgroundColor, other.primaryVideoBackgroundColor, t)!,
      primaryElementStatusOk:
          Color.lerp(primaryElementStatusOk, other.primaryElementStatusOk, t)!,
      primaryElementStatusError: Color.lerp(
          primaryElementStatusError, other.primaryElementStatusError, t)!,
      border: Color.lerp(border, other.border, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpecificColors &&
            const DeepCollectionEquality()
                .equals(primaryBackground, other.primaryBackground) &&
            const DeepCollectionEquality().equals(
                primarySecondaryBackground, other.primarySecondaryBackground) &&
            const DeepCollectionEquality()
                .equals(primaryElement, other.primaryElement) &&
            const DeepCollectionEquality().equals(primaryVideoBackgroundColor,
                other.primaryVideoBackgroundColor) &&
            const DeepCollectionEquality()
                .equals(primaryElementStatusOk, other.primaryElementStatusOk) &&
            const DeepCollectionEquality().equals(
                primaryElementStatusError, other.primaryElementStatusError) &&
            const DeepCollectionEquality().equals(border, other.border));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(primaryBackground),
      const DeepCollectionEquality().hash(primarySecondaryBackground),
      const DeepCollectionEquality().hash(primaryElement),
      const DeepCollectionEquality().hash(primaryVideoBackgroundColor),
      const DeepCollectionEquality().hash(primaryElementStatusOk),
      const DeepCollectionEquality().hash(primaryElementStatusError),
      const DeepCollectionEquality().hash(border),
    );
  }
}

extension SpecificColorsBuildContextProps on BuildContext {
  SpecificColors get specificColors =>
      Theme.of(this).extension<SpecificColors>()!;
  Color get primaryBackground => specificColors.primaryBackground;

  /// grey background
  Color get primarySecondaryBackground =>
      specificColors.primarySecondaryBackground;

  /// main widget color blue
  Color get primaryElement => specificColors.primaryElement;
  Color get primaryVideoBackgroundColor =>
      specificColors.primaryVideoBackgroundColor;
  Color get primaryElementStatusOk => specificColors.primaryElementStatusOk;
  Color get primaryElementStatusError =>
      specificColors.primaryElementStatusError;
  Color get border => specificColors.border;
}
