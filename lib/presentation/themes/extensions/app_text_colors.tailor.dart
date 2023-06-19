// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_text_colors.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppTextColorsTailorMixin on ThemeExtension<AppTextColors> {
  Color get primaryText;
  Color get primaryElementText;
  Color get primarySecondaryElementText;
  Color get primaryThreeElementText;
  Color get primaryFourElementText;

  @override
  AppTextColors copyWith({
    Color? primaryText,
    Color? primaryElementText,
    Color? primarySecondaryElementText,
    Color? primaryThreeElementText,
    Color? primaryFourElementText,
  }) {
    return AppTextColors(
      primaryText: primaryText ?? this.primaryText,
      primaryElementText: primaryElementText ?? this.primaryElementText,
      primarySecondaryElementText:
          primarySecondaryElementText ?? this.primarySecondaryElementText,
      primaryThreeElementText:
          primaryThreeElementText ?? this.primaryThreeElementText,
      primaryFourElementText:
          primaryFourElementText ?? this.primaryFourElementText,
    );
  }

  @override
  AppTextColors lerp(covariant ThemeExtension<AppTextColors>? other, double t) {
    if (other is! AppTextColors) return this as AppTextColors;
    return AppTextColors(
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      primaryElementText:
          Color.lerp(primaryElementText, other.primaryElementText, t)!,
      primarySecondaryElementText: Color.lerp(
          primarySecondaryElementText, other.primarySecondaryElementText, t)!,
      primaryThreeElementText: Color.lerp(
          primaryThreeElementText, other.primaryThreeElementText, t)!,
      primaryFourElementText:
          Color.lerp(primaryFourElementText, other.primaryFourElementText, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextColors &&
            const DeepCollectionEquality()
                .equals(primaryText, other.primaryText) &&
            const DeepCollectionEquality()
                .equals(primaryElementText, other.primaryElementText) &&
            const DeepCollectionEquality().equals(primarySecondaryElementText,
                other.primarySecondaryElementText) &&
            const DeepCollectionEquality().equals(
                primaryThreeElementText, other.primaryThreeElementText) &&
            const DeepCollectionEquality()
                .equals(primaryFourElementText, other.primaryFourElementText));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(primaryText),
      const DeepCollectionEquality().hash(primaryElementText),
      const DeepCollectionEquality().hash(primarySecondaryElementText),
      const DeepCollectionEquality().hash(primaryThreeElementText),
      const DeepCollectionEquality().hash(primaryFourElementText),
    );
  }
}

extension AppTextColorsBuildContextProps on BuildContext {
  AppTextColors get appTextColors => Theme.of(this).extension<AppTextColors>()!;
  Color get primaryText => appTextColors.primaryText;
  Color get primaryElementText => appTextColors.primaryElementText;
  Color get primarySecondaryElementText =>
      appTextColors.primarySecondaryElementText;
  Color get primaryThreeElementText => appTextColors.primaryThreeElementText;
  Color get primaryFourElementText => appTextColors.primaryFourElementText;
}
