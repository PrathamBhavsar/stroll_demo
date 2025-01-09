import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_demo/constants/app_colors.dart';
import 'package:stroll_demo/constants/app_texts.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 135.w,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 25.w,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.profileGrey,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Text(
                  'Angelina, 28',
                  style: AppTexts.titleTextStyle,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
          Container(
            height: 60.r,
            width: 60.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 10,
                color: AppColors.profileGrey,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}
