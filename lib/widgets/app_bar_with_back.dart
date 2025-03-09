import 'package:e_book_ui_template/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppBarWithBack extends StatelessWidget {
  final String title;
  const AppBarWithBack({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
        child: Row(
          spacing: 10,
          children: [
            IconButton(
              color: AppColors.greenColor,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const SizedBox(
                height: 45,
                width: 45,
                child: CircleAvatar(
                  backgroundColor: AppColors.greenColor,
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
            Text(title, style: AppTextStyles.appBarTitle),
          ],
        ),
      ),
    );
  }
}
