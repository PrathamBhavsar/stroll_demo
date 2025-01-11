import 'package:flutter/material.dart';
import 'package:stroll_demo/constants/app_colors.dart';

class CircleButtonWidget extends StatelessWidget {
  const CircleButtonWidget(
      {super.key, required this.content, required this.isFilled});

  final Widget content;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: isFilled ? AppColors.secondaryColor : Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
            width: 2.2,
            color: isFilled ? Colors.transparent : AppColors.secondaryColor),
      ),
      child: Center(
        child: content,
      ),
    );
  }
}
