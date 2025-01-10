import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  static final HomeProvider instance = HomeProvider._privateConstructor();

  HomeProvider._privateConstructor();

  int _currentIndex = 1;
  int _selectedChipIndex = -1;
  bool _showBackground = true;

  int get currentIndex => _currentIndex;
  int get selectedChipIndex => _selectedChipIndex;
  bool get showBackground => _showBackground;

  final chipData = [
    {'circleText': 'A', 'labelText': 'The peace in the early mornings'},
    {'circleText': 'B', 'labelText': 'The magical golden hours'},
    {'circleText': 'C', 'labelText': 'Wind-down time after dinners'},
    {'circleText': 'D', 'labelText': 'The serenity past midnight'},
  ];

  /// sets background
  void setShowBackground(bool value) {
    if (_showBackground != value) {
      _showBackground = value;
      notifyListeners();
    }
  }

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
