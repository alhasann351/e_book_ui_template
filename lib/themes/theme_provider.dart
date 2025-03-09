import 'package:e_book_ui_template/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightTheme;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    _updateStatusBar();
    notifyListeners();
  }

  void toggleTheme(bool isDarkMode) {
    if (isDarkMode) {
      _themeData = darkTheme;
    } else {
      _themeData = lightTheme;
    }
    _updateStatusBar();
    notifyListeners();
  }

  void _updateStatusBar() {
    bool isDarkMode = _themeData == darkTheme;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor:
            isDarkMode
                ? AppColors.midnightBlueColor
                : AppColors.blueAccentColor,
        statusBarIconBrightness:
            isDarkMode ? Brightness.light : Brightness.dark,
      ),
    );
  }
}
