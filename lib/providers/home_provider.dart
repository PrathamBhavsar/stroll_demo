import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  static final HomeProvider instance = HomeProvider._privateConstructor();

  HomeProvider._privateConstructor();

  int _currentIndex = 0;
  int _selectedChipIndex = -1;

  int get currentIndex => _currentIndex;
  int get selectedChipIndex => _selectedChipIndex;

  final chipData = [
    {'circleText': 'A', 'labelText': 'The peace in the early mornings'},
    {'circleText': 'B', 'labelText': 'The magical golden hours'},
    {'circleText': 'C', 'labelText': 'Wind-down time after dinners'},
    {'circleText': 'D', 'labelText': 'The serenity past midnight'},
  ];

  /// selects page
  void updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  /// selects chip choice
  void selectChip(int index) {
    if (_selectedChipIndex == index) {
      _selectedChipIndex = -1;
    } else {
      _selectedChipIndex = index;
    }
    notifyListeners();
  }
}
