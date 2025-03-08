import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/constants/app_images.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../../constants/app_text_styles.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 100, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlideInDown(
            animate: true,
            duration: Duration(seconds: 2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(250),
              child: Image.asset(
                AppImages.onboardingImage1,
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 25),
          SlideInLeft(
            animate: true,
            duration: Duration(seconds: 2),
            child: Text(
              AppStrings.onboardingScreenTitle1,
              style: AppTextStyles.title,
            ),
          ),
          SizedBox(height: 10),
          SlideInRight(
            animate: true,
            duration: Duration(seconds: 2),
            child: Text(
              AppStrings.onboardingScreenSubtitle1,
              textAlign: TextAlign.center,
              maxLines: 4,
              style: AppTextStyles.subtitle,
            ),
          ),
        ],
      ),
    );
  }
}
