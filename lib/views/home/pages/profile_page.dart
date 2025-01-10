import 'package:flutter/material.dart';
import 'package:stroll_demo/constants/app_texts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile',
        style: AppTexts.defaultTextStyle,
      ),
    );
  }
}
