import 'package:flutter/material.dart';

enum AppTheme {
  scaffoldBackgroundColor,
  appBarTheme,
}

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = ThemeData.light();

  ThemeData get currentTheme => _currentTheme;

  void toggleTheme() {
    _currentTheme = _currentTheme == ThemeData.light() ? ThemeData.dark() : ThemeData.light();
    notifyListeners();
    
  }
  
}