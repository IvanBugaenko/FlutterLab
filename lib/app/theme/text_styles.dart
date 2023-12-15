import "package:flutter/material.dart";
import "package:sber/app/theme/colors.dart";

class SFProFont {
  static const d = 'SF_Pro_Display';
  static const t = 'SF_Pro_Text';
}

class TextStyles {
  static const titleLarge = TextStyle(
      fontFamily: SFProFont.d,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: AppColors.onPrimary,
      // letterSpacing: -0.7
      );

  static const titleMedium = TextStyle(
      fontFamily: SFProFont.t,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: AppColors.onPrimary,
      letterSpacing: -0.7);

  static const titleSmall = TextStyle(
      fontFamily: SFProFont.t,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.onPrimary,
      letterSpacing: -0.4);

  static final bodyLarge = TextStyle(
      fontFamily: SFProFont.t,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.secondary,
      letterSpacing: -0.4);

  static const bodyMedium = TextStyle(
      fontFamily: SFProFont.t,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.onPrimary,
      letterSpacing: -0.4);

  static final bodySmall = TextStyle(
      fontFamily: SFProFont.t,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.secondary,
      letterSpacing: -0.4);
}
