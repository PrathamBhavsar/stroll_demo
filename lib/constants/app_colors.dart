import 'package:flutter/material.dart';

class AppColors {
  static const Color secondaryColor = Color(0xFF8B88EF);
  static const Color primaryColor = Color(0xFF0F1115);
  static const Color accentColor = Color(0xFF6F6E7C);
  static const Color textHeaderPurple = Color(0xFFCCC8FF);
  static const Color textBorderPurple = Color(0xFFB3ADF6);
  static const Color textLight = Color(0xFFF5F5F5);
  static const Color textQuotePurple = Color(0xCBC9FFB2);
  static const Color choiceChipGrey = Color(0xFF232A2E);

  static final MaterialColor primarySwatch = createMaterialColor(primaryColor);

  static MaterialColor createMaterialColor(Color color) {
    Map<int, Color> colorShades = {
      50: Color.alphaBlend(Colors.white.withOpacity(0.9), color),
      100: Color.alphaBlend(Colors.white.withOpacity(0.8), color),
      200: Color.alphaBlend(Colors.white.withOpacity(0.6), color),
      300: Color.alphaBlend(Colors.white.withOpacity(0.4), color),
      400: Color.alphaBlend(Colors.white.withOpacity(0.2), color),
      500: color,
      600: Color.alphaBlend(Colors.black.withOpacity(0.1), color),
      700: Color.alphaBlend(Colors.black.withOpacity(0.2), color),
      800: Color.alphaBlend(Colors.black.withOpacity(0.3), color),
      900: Color.alphaBlend(Colors.black.withOpacity(0.4), color),
    };

    return MaterialColor(color.value, colorShades);
  }
}
