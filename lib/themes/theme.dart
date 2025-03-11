import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.blueAccentColor,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.blackColor),
    bodyMedium: TextStyle(color: AppColors.blackColor),
    bodySmall: TextStyle(color: AppColors.blackColor),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.blueAccentColor,
    surfaceTintColor: AppColors.blueAccentColor,
    titleTextStyle: TextStyle(color: AppColors.blackColor),
  ),
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
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.blueAccentColor,
    selectedItemColor: AppColors.greenColor,
    unselectedItemColor: AppColors.greyColor,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.midnightBlueColor,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.whiteColor),
    bodyMedium: TextStyle(color: AppColors.whiteColor),
    bodySmall: TextStyle(color: AppColors.whiteColor),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.midnightBlueColor,
    surfaceTintColor: AppColors.midnightBlueColor,
    titleTextStyle: TextStyle(color: AppColors.whiteColor),
  ),
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
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.midnightBlueColor,
    selectedItemColor: AppColors.greenColor,
    unselectedItemColor: AppColors.greyColor,
  ),
);
