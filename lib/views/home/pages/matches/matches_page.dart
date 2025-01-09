import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:stroll_demo/constants/app_spaces.dart';
import 'package:stroll_demo/constants/app_texts.dart';
import 'package:stroll_demo/providers/home_provider.dart';
import 'package:stroll_demo/views/home/pages/matches/widgets/choice_chip_widget.dart';
import 'package:stroll_demo/views/home/pages/matches/widgets/circle_button_widget.dart';
import 'package:stroll_demo/views/home/pages/matches/widgets/profile_widget.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: ProfileWidget(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 80, right: 16),
                    child: Text(
                      'What is your favorite time of the day?',
                      style: AppTexts.questionTextStyle,
                    ),
                  ),
                ],
              ),
            ),
            AppSpaces.gapH(9),
            Text(
              '“Mine is definitely the peace in the morning.”',
              style: AppTexts.quoteTextStyle,
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
            AppSpaces.gapH(14),
            Flexible(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.5,
                ),
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
            ),
            AppSpaces.gapH(11),
            Row(
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
            ),
          ],
        );
      },
    );
  }
}
