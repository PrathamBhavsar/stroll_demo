import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_demo/constants/app_colors.dart';

class AppTexts {
  static TextStyle bodyText = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.textBodyWhite,
    fontSize: 14.sp,
  );

  static TextStyle headline1 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 34.sp,
    color: AppColors.textHeaderPurple,
    shadows: [
      Shadow(
        offset: const Offset(0, 0),
        blurRadius: 7.9,
        color: Colors.black.withOpacity(0.2),
      ),
      const Shadow(
        offset: Offset(0, 0),
        blurRadius: 2.0,
        color: Color(0xFFBEBEBE),
      ),
      Shadow(
        offset: const Offset(0, 1),
        blurRadius: 2.0,
        color: const Color(0xFF24232F).withOpacity(0.5),
      ),
    ],
  );

  static TextStyle subHeadline = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
    color: AppColors.textHeaderPurple,
    shadows: [
      Shadow(
        offset: const Offset(0, 0),
        blurRadius: 7.9,
        color: Colors.black.withOpacity(0.2),
      ),
      const Shadow(
        offset: Offset(0, 0),
        blurRadius: 2.0,
        color: Color(0xFFBEBEBE),
      ),
      Shadow(
        offset: const Offset(0, 1),
        blurRadius: 2.0,
        color: const Color(0xFF24232F).withOpacity(0.5),
      ),
    ],
  );
  static TextStyle titleTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.textLight,
    fontSize: 11.sp,
  );

  static TextStyle quoteTextStyle = TextStyle(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w400,
    color: AppColors.textQuotePurple,
    fontSize: 16.sp,
  );

  static TextStyle questionTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.textLight,
    fontSize: 22.sp,
  );

  static const TextStyle defaultTextStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 26,
    color: Colors.white,
  );

  static TextStyle choiceChipOptionTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.choiceChipLightGrey,
  );

  static TextStyle choiceChipLabelTextStyle({required bool isSelected}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      color:
          isSelected ? AppColors.secondaryColor : AppColors.choiceChipLightGrey,
    );
  }
}
