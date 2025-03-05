import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: AppColors.greenColor,
          child: Center(
            child: Text(
              "Home Screen",
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
