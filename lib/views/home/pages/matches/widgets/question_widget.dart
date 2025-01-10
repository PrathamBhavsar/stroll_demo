import 'package:flutter/material.dart';
import 'package:stroll_demo/constants/app_texts.dart';
import 'package:stroll_demo/views/home/pages/matches/widgets/profile_widget.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: ProfileWidget(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 80, right: 16),
            child: Text(
              'What is your favorite time of the day?',
              style: AppTexts.questionTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
