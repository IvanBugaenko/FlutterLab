import "package:flutter/material.dart";
import "package:sber/app/theme/colors.dart";
import 'package:sber/app/theme/text_styles.dart';

class AppTheme {
  static final themeData = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyles.titleLarge,
      titleMedium: TextStyles.titleMedium,
      titleSmall: TextStyles.titleSmall,
      bodyLarge: TextStyles.bodyLarge,
      bodyMedium: TextStyles.bodyMedium,
      bodySmall: TextStyles.bodySmall
    )
  );
}
