import 'package:flutter/material.dart';
import 'package:music_player/themes/dark_mode.dart';

import 'light_mode.dart';


class ThemeProvider extends ChangeNotifier {
  //initially light mode
ThemeData _themeData = lightMode;

//get Theme
ThemeData get themeData => _themeData;
  //is Dark mode

bool get isDarkMode => _themeData== darkMode;

set themeData (ThemeData themeData) {
  _themeData = themeData;

  //update UI
  notifyListeners();
}
// toggle theme
void toggleTheme () {
  if (_themeData ==lightMode)
    {
      themeData = darkMode;
    }
  else {
    themeData = lightMode;
  }
}
}