import 'package:flutter/material.dart';

import 'package:gojo_renthub/themes/darkmode.dart';
import 'package:gojo_renthub/themes/lightmode.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;
  bool isDarkMode = false;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
      isDarkMode = true;
    } else {
      themeData = lightMode;
    
    }
  }
}
