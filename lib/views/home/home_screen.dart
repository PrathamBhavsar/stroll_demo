import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:stroll_demo/views/home/pages/bonfire_page.dart';
import 'package:stroll_demo/views/home/pages/chats_page.dart';
import 'package:stroll_demo/views/home/pages/matches_page.dart';
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
          return Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            appBar: AppBar(
              forceMaterialTransparency: true,
              title: const Text('Home Screen'),
            ),
            body: PageView(
              onPageChanged: (index) {
                homeProvider.updateIndex(index);
              },
              controller:
                  PageController(initialPage: homeProvider.currentIndex),
              children: const [
                MatchesPage(),
                BonfirePage(),
                ChatsPage(),
                ProfilePage(),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildBottomNavItem(0, 'card', homeProvider),
                  _buildBottomNavItem(1, 'bonfire', homeProvider),
                  _buildBottomNavItem(2, 'chat', homeProvider),
                  _buildBottomNavItem(3, 'user', homeProvider),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBottomNavItem(
      int index, String iconName, HomeProvider homeProvider) {
    return IconButton(
      icon: SvgPicture.asset('assets/icons/$iconName.svg'),
      onPressed: () {
        homeProvider.updateIndex(index);
      },
    );
  }
}
