import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:e_book_ui_template/screens/authentication_screen/get_start_screen.dart';
import 'package:e_book_ui_template/screens/onboarding_screen/widgets/onboarding_screen_1.dart';
import 'package:e_book_ui_template/screens/onboarding_screen/widgets/onboarding_screen_2.dart';
import 'package:e_book_ui_template/screens/onboarding_screen/widgets/onboarding_screen_3.dart';
import 'package:e_book_ui_template/screens/onboarding_screen/widgets/onboarding_screen_4.dart';
import 'package:e_book_ui_template/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, Object? result) async {
          SystemNavigator.pop(animated: true);
        },
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                _currentIndex;
              },
              children: [
                const OnboardingScreen1(),
                const OnboardingScreen2(),
                const OnboardingScreen3(),
                const OnboardingScreen4(),
              ],
            ),

            SlideInUp(
              animate: true,
              duration: const Duration(seconds: 2),
              child: Container(
                alignment: const Alignment(0, 0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextButton(
                      text: AppStrings.skip,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GetStartScreen(),
                          ),
                        );
                      },
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
                        ? CustomTextButton(
                          text: AppStrings.finish,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const GetStartScreen(),
                              ),
                            );
                          },
                        )
                        : IconButton(
                          color: AppColors.greenColor,
                          onPressed: () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.decelerate,
                            );
                          },
                          icon: const SizedBox(
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
      ),
    );
  }
}
