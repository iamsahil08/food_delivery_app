import 'package:flutter/material.dart';
import 'package:food_delivery_app_mitch_koko/themes/dark_mode.dart';
import 'package:food_delivery_app_mitch_koko/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  // current theme data is set to lightmode
  ThemeData _themeData = lightMode;
// getter to use themeData in code without giving access to private variable _themeData => so that we don't defy encapsulation rules.
  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;
// somewhere we will use this settter to set the current theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
// toggleTheme will also be used in code to
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
