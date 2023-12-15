import "package:flutter/material.dart";
import "package:sber/app/theme/colors.dart";
import 'package:sber/app/theme/text_styles.dart';

class AppTheme {
  static final themeData = ThemeData(
      useMaterial3: true,
      textTheme: sberTextTheme,
      colorScheme: sberColorScheme,
      tabBarTheme: sberTabBarTheme,
      chipTheme: sberChipTheme,
      dividerColor: AppColors.outlineVariant,
      elevatedButtonTheme: sberElevatedButtonTheme);
}

final sberTextTheme = TextTheme(
    titleLarge: TextStyles.titleLarge,
    titleMedium: TextStyles.titleMedium,
    titleSmall: TextStyles.titleSmall,
    bodyLarge: TextStyles.bodyLarge,
    bodyMedium: TextStyles.bodyMedium,
    bodySmall: TextStyles.bodySmall);

final sberColorScheme = ColorScheme.light(
  brightness: Brightness.light,
  primary: AppColors.primary,
  onPrimary: AppColors.onPrimary,
  secondary: AppColors.secondary,
  tertiary: AppColors.tertiary,
  surface: AppColors.surface,
  onSurface: AppColors.onSurface,
);

final sberTabBarTheme = TabBarTheme(
  dividerColor: AppColors.outlineVariant,
  indicatorSize: TabBarIndicatorSize.tab,
  unselectedLabelColor: AppColors.secondary,
  indicator: const UnderlineTabIndicator(
    borderSide: BorderSide(color: AppColors.activeElement, width: 2),
  ),
  labelColor: Colors.black,
  labelStyle: sberTextTheme.titleSmall,
  unselectedLabelStyle: sberTextTheme.bodyLarge,
);

final sberChipTheme = ChipThemeData(
  labelPadding: const EdgeInsets.symmetric(horizontal: 4),
  backgroundColor: AppColors.outlineVariant,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  ),
  side: BorderSide.none,
  selectedColor: AppColors.activeElement,
);

final sberElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.activeElement,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
);
