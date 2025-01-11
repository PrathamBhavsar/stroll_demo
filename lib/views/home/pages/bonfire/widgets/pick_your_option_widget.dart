import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_demo/constants/app_spaces.dart';
import 'package:stroll_demo/constants/app_texts.dart';
import 'package:stroll_demo/views/home/pages/bonfire/widgets/circle_button_widget.dart';

class PickYourOptionWidget extends StatelessWidget {
  const PickYourOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Pick your option.\nSee who has a similar mind.',
          style: AppTexts.bodyText,
        ),
        Row(
          children: [
            CircleButtonWidget(
              isFilled: false,
              content: SvgPicture.asset('assets/icons/microphone.svg'),
            ),
            AppSpaces.gapW(6),
            CircleButtonWidget(
              isFilled: true,
              content: SvgPicture.asset('assets/icons/arrow.svg'),
            ),
          ],
        )
      ],
    );
  }
}
