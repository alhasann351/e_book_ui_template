import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
    Timer(const Duration(seconds: 6), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Expanded(
            flex: 4,
            child: SlideInLeft(
              animate: true,
              duration: const Duration(seconds: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  Image.asset(
                    AppImages.splashImage,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    AppStrings.appTitle,
                    maxLines: 1,
                    style: AppTextStyles.title,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SlideInRight(
              animate: true,
              duration: const Duration(seconds: 2),
              child: const Align(
                alignment: Alignment.topCenter,
                child: Loading(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
