import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class RatingIcons extends StatelessWidget {
  const RatingIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Icon(Icons.star, size: 20, color: AppColors.vividOrangeColor),
        ),
        Flexible(
          child: Icon(Icons.star, size: 20, color: AppColors.vividOrangeColor),
        ),
        Flexible(
          child: Icon(Icons.star, size: 20, color: AppColors.vividOrangeColor),
        ),
        Flexible(
          child: Icon(Icons.star, size: 20, color: AppColors.vividOrangeColor),
        ),
        Flexible(
          child: Icon(Icons.star, size: 20, color: AppColors.vividOrangeColor),
        ),
      ],
    );
  }
}
