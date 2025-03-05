import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: LoadingIndicator(
        indicatorType: Indicator.ballRotateChase,
        colors: [AppColors.greenColor],
      ),
    );
  }
}
