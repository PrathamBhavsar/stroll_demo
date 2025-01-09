import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  static final HomeProvider instance = HomeProvider._privateConstructor();

  HomeProvider._privateConstructor();

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updateIndex(int index) {
    _currentIndex = index;
    print(currentIndex);
    notifyListeners();
  }
}
