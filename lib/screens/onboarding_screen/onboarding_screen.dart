import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:e_book_ui_template/constants/app_text_styles.dart';
import 'package:e_book_ui_template/screens/authentication_screen/get_start_screen.dart';
import 'package:e_book_ui_template/screens/onboarding_screen/widgets/onboarding_screen_1.dart';
import 'package:e_book_ui_template/screens/onboarding_screen/widgets/onboarding_screen_2.dart';
import 'package:e_book_ui_template/screens/onboarding_screen/widgets/onboarding_screen_3.dart';
import 'package:e_book_ui_template/screens/onboarding_screen/widgets/onboarding_screen_4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/app_strings.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    _pageController.addListener(() {
      _currentIndex;
      setState(() {
        _currentIndex = _pageController.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.blueAccentColor,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              _currentIndex;
            },
            children: [
              OnboardingScreen1(),
              OnboardingScreen2(),
              OnboardingScreen3(),
              OnboardingScreen4(),
            ],
          ),

          SlideInUp(
            animate: true,
            duration: Duration(seconds: 2),
            child: Container(
              alignment: Alignment(0, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.greenColor,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GetStartScreen(),
                        ),
                      );
                    },
                    child: Text(AppStrings.skip, style: AppTextStyles.body),
                  ),
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 4,
                    axisDirection: Axis.horizontal,
                    effect: const WormEffect(
                      activeDotColor: AppColors.greenColor,
                    ),
                  ),
                  _currentIndex == 3
                      ? TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: AppColors.greenColor,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GetStartScreen(),
                            ),
                          );
                        },
                        child: Text(
                          AppStrings.finish,
                          style: AppTextStyles.body,
                        ),
                      )
                      : IconButton(
                        color: AppColors.greenColor,
                        onPressed: () {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.decelerate,
                          );
                        },
                        icon: SizedBox(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            backgroundColor: AppColors.greenColor,
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
