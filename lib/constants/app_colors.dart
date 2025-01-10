import 'package:flutter/material.dart';

class AppColors {
  static const Color secondaryColor = Color(0xFF8B88EF);
  static const Color primaryColor = Color(0xFF0F1115);
  static const Color accentColor = Color(0xFF6F6E7C);
  static const Color textHeaderPurple = Color(0xFFCCC8FF);
  static const Color textBorderPurple = Color(0xFFB3ADF6);
  static const Color textBodyWhite = Color(0xFFE5E5E5);
  static const Color textLight = Color(0xFFF5F5F5);
  static const Color choiceChipLightGrey = Color(0xFFC4C4C4);
  static const Color textQuotePurple = Color.fromRGBO(203, 201, 255, 0.7);
  static const Color choiceChipGrey = Color(0xFF232A2E);
  static const Color profileGrey = Color(0xFF0D0F11);

  static const Color shadow1 = Color(0xFFBEBEBE);
  static const Color shadow2 = Color(0xFF24232F);
  static const Color boxShadow = Color(0x7A484848);

  static List<BoxShadow> choiceChipShadows = [
    BoxShadow(
      color: Colors.black.withOpacity(0.3),
      offset: const Offset(-1, -1),
      blurRadius: 2,
    ),
    const BoxShadow(
      color: boxShadow,
      offset: Offset(1, 1),
      blurRadius: 2,
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.3),
      offset: const Offset(2, 2),
      blurRadius: 8,
    ),
  ];

  static List<Shadow> titleTextShadows = [
    Shadow(
      offset: const Offset(0, 0),
      blurRadius: 7.9,
      color: Colors.black.withOpacity(0.2),
    ),
    const Shadow(
      offset: Offset(0, 0),
      blurRadius: 2.0,
      color: AppColors.shadow1,
    ),
    Shadow(
      offset: const Offset(0, 1),
      blurRadius: 2.0,
      color: AppColors.shadow2.withOpacity(0.5),
    ),
  ];

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
