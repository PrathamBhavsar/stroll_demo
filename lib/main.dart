import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stroll_demo/constants/app_colors.dart';
import 'package:stroll_demo/constants/app_texts.dart';
import 'package:stroll_demo/providers/home_provider.dart';
import 'package:stroll_demo/views/home/home_screen.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<HomeProvider>(
            create: (_) => HomeProvider.instance,
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Proxima Nova',
        primaryColor: AppColors.primaryColor,
        colorScheme: ColorScheme.fromSwatch(
                primarySwatch: AppColors.primarySwatch,
                accentColor: AppColors.accentColor)
            .copyWith(
          secondary: AppColors.secondaryColor,
        ),
        textTheme: TextTheme(
          bodyLarge: AppTexts.bodyText,
          displayLarge: AppTexts.headline1,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
