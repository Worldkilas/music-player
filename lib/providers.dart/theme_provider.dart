import 'package:flutter/material.dart';
import 'package:minimal_music_player/themes/dark_mode.dart';
import 'package:minimal_music_player/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  //initially make it light mode
  ThemeData _themeData = lightMode;

  //get theme
  ThemeData get themeData => _themeData;

  // is dark mode
  bool get isDarkMode => _themeData == darkMode;

  //set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  //toggle theme method
  void toggleTheme() {
    _themeData == lightMode ? themeData = darkMode : themeData = lightMode;
  }
}
