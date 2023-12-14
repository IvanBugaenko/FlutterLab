import "package:flutter/material.dart";

class AppColors {
  static const primary = Colors.white; // заливка основных компонент приложения
  static const onPrimary = Colors
      .black; // цвет самого выделяющегося текста поверх основных компонент
  static final secondary =
      Colors.black.withOpacity(0.55); // цвет для второстепенного текста
  static const surface = Color(0xFFFAFAFA); // основная заливка заднего фона
  static const onSurface =
      Colors.white; // заливка управляющего компонента поверх заднего фона
  static const Color onSurfaceShadow =
      Color(0x7A1D1D25); // цвет тени компонента onSurface
  static final outlineVariant =
      Colors.black.withOpacity(0.12); // цвет разделителя
  static const tertiary = Color(0xFF08A652); // цвет иконок на верхней панели
  static const Color activeElement =
      Color(0xFF068441); // цвет активного таба/чипа
}
