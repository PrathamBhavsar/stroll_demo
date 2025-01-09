import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stroll_demo/constants/app_spaces.dart';
import 'package:stroll_demo/constants/app_texts.dart';
import 'package:stroll_demo/providers/home_provider.dart';
import 'package:stroll_demo/views/home/pages/matches/widgets/choice_chip_widget.dart';
import 'package:stroll_demo/views/home/pages/matches/widgets/pick_your_option_widget.dart';
import 'package:stroll_demo/views/home/pages/matches/widgets/question_widget.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const QuestionWidget(),
            AppSpaces.gapH(9),
            Text(
              '“Mine is definitely the peace in the morning.”',
              style: AppTexts.quoteTextStyle,
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
            AppSpaces.gapH(9),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 67,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: provider.chipData.length,
              itemBuilder: (context, index) {
                final chip = provider.chipData[index];
                return ChoiceChipWidget(
                  isSelected: provider.selectedChipIndex == index,
                  onTap: () => provider.selectChip(index),
                  optionText: chip['circleText']!,
                  labelText: chip['labelText']!,
                );
              },
            ),
            AppSpaces.gapH(11),
            const PickYourOptionWidget(),
          ],
        );
      },
    );
  }
}
