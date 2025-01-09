import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_demo/constants/app_colors.dart';

class AppTexts {
  static TextStyle bodyText = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.textBodyWhite,
    fontSize: 12.sp,
    height: 1.5,
  );

  static const TextStyle headline1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 32,
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
    fontSize: 12.sp,
  );

  static TextStyle questionTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    color: AppColors.textLight,
    fontSize: 20.sp,
  );

  static const TextStyle defaultTextStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 24,
    color: Colors.white,
  );

  static TextStyle choiceChipOptionTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.choiceChipLightGrey,
    height: 1.05,
  );

  static TextStyle choiceChipLabelTextStyle({required bool isSelected}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      color:
          isSelected ? AppColors.secondaryColor : AppColors.choiceChipLightGrey,
      height: 1.05,
    );
  }
}
