import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_images.dart';
import '../../../constants/app_strings.dart';
import '../../../constants/app_text_styles.dart';

class OnboardingScreen4 extends StatelessWidget {
  const OnboardingScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0, bottom: 100, left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlideInDown(
            animate: true,
            duration: Duration(seconds: 2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(250),
              child: Image.asset(
                AppImages.onboardingImage4,
                cacheHeight: 250,
                cacheWidth: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 25),
          SlideInLeft(
            animate: true,
            duration: Duration(seconds: 2),
            child: Text(
              AppStrings.onboardingScreenTitle4,
              style: AppTextStyles.title,
            ),
          ),
          SizedBox(height: 15),
          SlideInRight(
            animate: true,
            duration: Duration(seconds: 2),
            child: Text(
              AppStrings.onboardingScreenSubtitle4,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              style: AppTextStyles.subtitle,
            ),
          ),
        ],
      ),
    );
  }
}
