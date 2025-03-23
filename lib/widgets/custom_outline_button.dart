import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomOutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.only(left: 10, right: 10),
        foregroundColor: AppColors.greenColor,
        side: const BorderSide(color: AppColors.greenColor),
      ),
      child: Text(text, style: AppTextStyles.body),
    );
  }
}
