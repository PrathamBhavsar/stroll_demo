import 'package:flutter/material.dart';
import 'package:stroll_demo/constants/app_texts.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Matches',
        style: AppTexts.defaultTextStyle,
      ),
    );
  }
}
