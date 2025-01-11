import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stroll_demo/constants/app_colors.dart';
import 'package:stroll_demo/constants/app_icons.dart';
import 'package:stroll_demo/constants/app_spaces.dart';
import 'package:stroll_demo/constants/app_texts.dart';
import 'package:stroll_demo/providers/home_provider.dart';
import 'package:stroll_demo/views/home/pages/bonfire/widgets/choice_chip_widget.dart';
import 'package:stroll_demo/views/home/pages/bonfire/widgets/pick_your_option_widget.dart';
import 'package:stroll_demo/views/home/pages/bonfire/widgets/question_widget.dart';

class BonfirePage extends StatelessWidget {
  const BonfirePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppSpaces.gapH(15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'Stroll Bonfire',
                          style: AppTexts.headline1,
                        ),
                      ),
                      AppSpaces.gapW(10),
                      Icon(
                        AppIcons.arrow,
                        size: 10.sp,
                        color: AppColors.textHeaderPurple,
                        shadows: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ],
                  ),
                  AppSpaces.gapH(2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            AppIcons.timer,
                            size: 16.sp,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          AppSpaces.gapW(4),
                          Padding(
                            padding: const EdgeInsets.all(3),
                            child: Text(
                              '22h 00m',
                              style: AppTexts.subHeadline,
                            ),
                          ),
                        ],
                      ),
                      AppSpaces.gapW(10),
                      Row(
                        children: [
                          Icon(
                            AppIcons.user,
                            size: 16.sp,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          AppSpaces.gapW(4),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              '103',
                              style: AppTexts.subHeadline,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
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
          ),
        );
      },
    );
  }
}
