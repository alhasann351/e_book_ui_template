import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_images.dart';
import '../../constants/app_strings.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/loading.dart';
import '../onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueAccentColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Expanded(
            flex: 4,
            child: SlideInLeft(
              animate: true,
              duration: Duration(seconds: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  Image.asset(
                    AppImages.splashImage,
                    cacheHeight: 50,
                    cacheWidth: 50,
                    fit: BoxFit.cover,
                  ),
                  Text(AppStrings.appTitle, style: AppTextStyles.title),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SlideInRight(
              animate: true,
              duration: Duration(seconds: 2),
              child: Align(
                alignment: Alignment.topCenter,
                child: const Loading(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
