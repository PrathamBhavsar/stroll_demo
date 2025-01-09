import 'package:flutter/material.dart';
import 'package:stroll_demo/constants/app_texts.dart';

class BonfirePage extends StatelessWidget {
  const BonfirePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Bonfire',
        style: AppTexts.defaultTextStyle,
      ),
    );
  }
}
