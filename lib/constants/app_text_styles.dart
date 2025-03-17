import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle appBarTitle = const TextStyle(
    fontSize: 20,
    fontFamily: 'amaranth',
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle title = const TextStyle(
    fontSize: 22,
    fontFamily: 'amaranth',
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle subtitle = const TextStyle(
    fontSize: 16,
    fontFamily: 'amaranth',
    fontWeight: FontWeight.bold,
    color: AppColors.greyColor,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle body = const TextStyle(
    fontSize: 16,
    fontFamily: 'amaranth',
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle inputTextStyle = const TextStyle(
    fontSize: 16,
    fontFamily: 'amaranth',
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle hintTextStyle = const TextStyle(
    fontSize: 16,
    fontFamily: 'amaranth',
    color: AppColors.greyColor,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle buttonTextStyle = const TextStyle(
    fontSize: 18,
    fontFamily: 'amaranth',
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle bottomNavBarStyle = const TextStyle(
    fontSize: 14,
    fontFamily: 'amaranth',
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle mediumTextStyle = const TextStyle(
    fontSize: 16,
    fontFamily: 'amaranth',
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle bookNameStyle = const TextStyle(
    fontSize: 14,
    fontFamily: 'amaranth',
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle bookPriceStyle = const TextStyle(
    fontSize: 16,
    fontFamily: 'amaranth',
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
    color: AppColors.greenColor,
  );

  static TextStyle discountTitleStyle = const TextStyle(
    fontSize: 16,
    fontFamily: 'amaranth',
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.bold,
  );

  static TextStyle discountSubtitleStyle = const TextStyle(
    fontSize: 14,
    fontFamily: 'amaranth',
    color: AppColors.greyColor,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle discountBookPriceStyle = const TextStyle(
    fontSize: 16,
    fontFamily: 'amaranth',
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
    color: AppColors.greenColor,
    decoration: TextDecoration.lineThrough,
    decorationColor: AppColors.redColor,
    decorationThickness: 3,
  );
}
