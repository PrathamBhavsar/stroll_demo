import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:stroll_demo/constants/app_colors.dart';
import 'package:stroll_demo/constants/app_spaces.dart';
import 'package:stroll_demo/views/home/pages/bonfire_page.dart';
import 'package:stroll_demo/views/home/pages/chats_page.dart';
import 'package:stroll_demo/views/home/pages/matches/matches_page.dart';
import 'package:stroll_demo/views/home/pages/profile_page.dart';
import 'package:stroll_demo/providers/home_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider.instance,
      child: Consumer<HomeProvider>(
        builder: (context, homeProvider, child) {
          final pageController =
              PageController(initialPage: homeProvider.currentIndex);

          const pages = [
            MatchesPage(),
            BonfirePage(),
            ChatsPage(),
            ProfilePage(),
          ];

          return Scaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: [
                if (homeProvider.currentIndex == 0)
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/matches_background.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                // Your existing PageView
                Padding(
                  padding: AppSpaces.appPadding,
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (index) {
                      homeProvider.updateIndex(index);
                    },
                    children: pages,
                  ),
                ),
              ],
            ),
            bottomNavigationBar: SizedBox(
              height: 80.h,
              child: Theme(
                data: Theme.of(context).copyWith(
                  splashColor: AppColors.secondaryColor.withOpacity(0.2),
                  highlightColor: Colors.transparent,
                ),
                child: BottomNavigationBar(
                  currentIndex: homeProvider.currentIndex,
                  onTap: (index) {
                    homeProvider.updateIndex(index);
                    pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  },
                  useLegacyColorScheme: true,
                  type: BottomNavigationBarType.fixed,
                  showUnselectedLabels: false,
                  backgroundColor: Theme.of(context).primaryColor,
                  selectedItemColor: AppColors.secondaryColor,
                  unselectedItemColor: AppColors.accentColor,
                  selectedIconTheme:
                      const IconThemeData(color: AppColors.secondaryColor),
                  showSelectedLabels: false,
                  items: _buildBottomNavItems(homeProvider),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Helper method to build BottomNavigationBar items
  List<BottomNavigationBarItem> _buildBottomNavItems(
      HomeProvider homeProvider) {
    final iconPaths = [
      'assets/icons/card.svg',
      'assets/icons/bonfire.svg',
      'assets/icons/chat.svg',
      'assets/icons/user.svg',
    ];

    return List.generate(4, (index) {
      return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          iconPaths[index],
          color: homeProvider.currentIndex == index
              ? AppColors.secondaryColor
              : AppColors.accentColor,
        ),
        label: _getLabelForIndex(index),
      );
    });
  }

  String _getLabelForIndex(int index) {
    switch (index) {
      case 0:
        return 'Card';
      case 1:
        return 'Bonfire';
      case 2:
        return 'Chats';
      case 3:
        return 'Profile';
      default:
        return '';
    }
  }
}
