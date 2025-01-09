import 'package:flutter/material.dart';
import 'package:stroll_demo/constants/app_texts.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Chats',
        style: AppTexts.defaultTextStyle,
      ),
    );
  }
}
