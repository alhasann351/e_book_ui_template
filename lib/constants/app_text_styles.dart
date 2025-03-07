import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle title = TextStyle(
    fontSize: 22,
    fontFamily: 'amaranth',
    fontWeight: FontWeight.bold,
  );

  static TextStyle subtitle = TextStyle(
    fontSize: 16,
    fontFamily: 'amaranth',
    fontWeight: FontWeight.bold,
    color: AppColors.greyColor,
  );

  static TextStyle body = TextStyle(fontSize: 16, fontFamily: 'amaranth');

  static TextStyle buttonTextStyle = TextStyle(
    fontSize: 18,
    fontFamily: 'amaranth',
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
  );
}
