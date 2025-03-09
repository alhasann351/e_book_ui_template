import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:e_book_ui_template/constants/app_images.dart';
import 'package:e_book_ui_template/constants/app_strings.dart';
import 'package:e_book_ui_template/constants/app_text_styles.dart';
import 'package:e_book_ui_template/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import '../../themes/theme.dart';
import '../../themes/theme_provider.dart';
import '../../widgets/app_bar_with_back.dart';
import '../../widgets/custom_text_button.dart';
import 'create_pin_screen.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkTheme =
        Provider.of<ThemeProvider>(context).themeData == darkTheme;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AppBarWithBack(title: AppStrings.otpVerification),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SlideInDown(
                        animate: true,
                        duration: const Duration(seconds: 2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(250),
                          child: Image.asset(
                            AppImages.otpVerificationImage,
                            height: 180,
                            width: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 4),
                        child: Text(
                          AppStrings.verificationTitle,
                          style: AppTextStyles.appBarTitle,
                        ),
                      ),
                      const SizedBox(height: 15),
                      ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 4),
                        child: Text(
                          AppStrings.verificationSubtitle,
                          style: AppTextStyles.subtitle,
                        ),
                      ),
                      const SizedBox(height: 35),
                      SlideInLeft(
                        animate: true,
                        duration: const Duration(seconds: 2),
                        child: Pinput(
                          length: 4,
                          keyboardType: TextInputType.phone,
                          defaultPinTheme: PinTheme(
                            margin: const EdgeInsets.all(10),
                            width: 56,
                            height: 60,
                            textStyle: AppTextStyles.inputTextStyle,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color:
                                  isDarkTheme
                                      ? AppColors.filledColor
                                      : AppColors.whiteColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                          focusedPinTheme: PinTheme(
                            width: 56,
                            height: 60,
                            textStyle: AppTextStyles.inputTextStyle,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color:
                                  isDarkTheme
                                      ? AppColors.filledColor
                                      : AppColors.whiteColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              border: Border.all(
                                color: AppColors.greenColor,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      SlideInRight(
                        animate: true,
                        duration: const Duration(seconds: 2),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: CustomElevatedButton(
                              buttonText: AppStrings.verify,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => const CreatePinScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const SizedBox(height: 25),
                      SlideInUp(
                        animate: true,
                        duration: const Duration(seconds: 2),
                        child: Text(
                          AppStrings.doNotReceiveCode,
                          maxLines: 1,
                          style: AppTextStyles.subtitle,
                        ),
                      ),
                      SlideInUp(
                        animate: true,
                        duration: const Duration(seconds: 2),
                        child: CustomTextButton(
                          text: AppStrings.resendCode,
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
