import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.blueAccentColor,
  appBarTheme: const AppBarTheme(backgroundColor: AppColors.blueAccentColor),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: AppColors.whiteColor,
  ),
  checkboxTheme: const CheckboxThemeData(
    side: BorderSide(width: 2, color: AppColors.blackColor),
  ),
  cardTheme: const CardThemeData(color: AppColors.whiteColor),
  dialogTheme: DialogThemeData(
    backgroundColor: AppColors.blueAccentColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.midnightBlueColor,
  appBarTheme: const AppBarTheme(backgroundColor: AppColors.midnightBlueColor),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.filledColor,
  ),
  checkboxTheme: const CheckboxThemeData(
    side: BorderSide(width: 2, color: AppColors.whiteColor),
  ),
  cardTheme: CardThemeData(color: AppColors.filledColor),
  dialogTheme: DialogThemeData(
    backgroundColor: AppColors.midnightBlueColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
);
