import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_images.dart';
import '../../../constants/app_strings.dart';
import '../../../constants/app_text_styles.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlideInDown(
            animate: true,
            duration: const Duration(seconds: 2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(250),
              child: Image.asset(
                AppImages.onboardingImage3,
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 25),
          SlideInLeft(
            animate: true,
            duration: const Duration(seconds: 2),
            child: Text(
              AppStrings.onboardingScreenTitle3,
              style: AppTextStyles.title,
            ),
          ),
          const SizedBox(height: 10),
          SlideInRight(
            animate: true,
            duration: const Duration(seconds: 2),
            child: Text(
              AppStrings.onboardingScreenSubtitle3,
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
