import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_demo/constants/app_colors.dart';
import 'package:stroll_demo/constants/app_spaces.dart';
import 'package:stroll_demo/constants/app_texts.dart';

class ChoiceChipWidget extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String optionText;
  final String labelText;

  const ChoiceChipWidget({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.optionText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            strokeAlign: BorderSide.strokeAlignInside,
            color: isSelected ? AppColors.secondaryColor : Colors.transparent,
          ),
          color: AppColors.choiceChipGrey,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: AppColors.choiceChipShadows,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.secondaryColor
                      : Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1,
                    color: isSelected
                        ? AppColors.secondaryColor
                        : AppColors.choiceChipLightGrey,
                  ),
                ),
                child: Text(
                  optionText,
                  style: AppTexts.choiceChipOptionTextStyle,
                ),
              ),
              AppSpaces.gapW(10),
              Flexible(
                child: Text(
                  labelText,
                  style:
                      AppTexts.choiceChipLabelTextStyle(isSelected: isSelected),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
