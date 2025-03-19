import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/screens/authentication_screen/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_images.dart';
import '../../constants/app_strings.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_bar_with_back.dart';
import '../../widgets/custom_elevated_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SlideInLeft(
              animate: true,
              duration: const Duration(seconds: 2),
              child: const AppBarWithBack(
                title: AppStrings.forgotPasswordTitle,
              ),
            ),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      SlideInDown(
                        animate: true,
                        duration: const Duration(seconds: 2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(180),
                          child: Image.asset(
                            AppImages.forgotPasswordImage,
                            width: 180,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 4),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            AppStrings.forgotPasswordSubtitle,
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            style: AppTextStyles.subtitle,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      SlideInRight(
                        animate: true,
                        duration: const Duration(seconds: 2),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            cursorColor: AppColors.greenColor,
                            style: AppTextStyles.inputTextStyle,
                            decoration: InputDecoration(
                              hintText: AppStrings.phone,
                              hintStyle: AppTextStyles.hintTextStyle,
                              prefixIcon: const Icon(
                                Iconsax.mobile_copy,
                                size: 28,
                                color: AppColors.greyColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.green,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 4),
                        child: Text(
                          AppStrings.or,
                          style: AppTextStyles.subtitle,
                        ),
                      ),
                      const SizedBox(height: 15),
                      SlideInLeft(
                        animate: true,
                        duration: const Duration(seconds: 2),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: AppColors.greenColor,
                            style: AppTextStyles.inputTextStyle,
                            decoration: InputDecoration(
                              hintText: AppStrings.email,
                              hintStyle: AppTextStyles.hintTextStyle,
                              prefixIcon: const Icon(
                                Iconsax.sms_copy,
                                size: 28,
                                color: AppColors.greyColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.green,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      SlideInUp(
                        animate: true,
                        duration: const Duration(seconds: 2),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: CustomElevatedButton(
                              buttonText: AppStrings.send,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) =>
                                            const OtpVerificationScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
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
