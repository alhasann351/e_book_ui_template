import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:e_book_ui_template/constants/app_images.dart';
import 'package:e_book_ui_template/screens/authentication_screen/sign_in_email_screen.dart';
import 'package:e_book_ui_template/screens/authentication_screen/sign_in_phone_screen.dart';
import 'package:e_book_ui_template/screens/authentication_screen/signup_screen.dart';
import 'package:e_book_ui_template/widgets/custom_elevated_button.dart';
import 'package:e_book_ui_template/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/app_strings.dart';
import '../../constants/app_text_styles.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, Object? result) async {
          SystemNavigator.pop(animated: true);
        },
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  SlideInDown(
                    animate: true,
                    duration: const Duration(seconds: 2),
                    child: Text(
                      AppStrings.getStart,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: AppTextStyles.title,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SlideInDown(
                    animate: true,
                    duration: const Duration(seconds: 2),
                    child: Text(
                      AppStrings.appTitle,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: AppTextStyles.subtitle,
                    ),
                  ),
                  const SizedBox(height: 25),
                  ZoomIn(
                    animate: true,
                    duration: const Duration(seconds: 4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250),
                      child: Image.asset(
                        AppImages.getStartedImage,
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  SlideInLeft(
                    animate: true,
                    duration: const Duration(seconds: 2),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: CustomElevatedButton(
                          buttonText: AppStrings.signInWithPhoneNumber,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInPhoneScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  SlideInRight(
                    animate: true,
                    duration: const Duration(seconds: 2),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: CustomElevatedButton(
                          buttonText: AppStrings.signInWithEmail,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInEmailScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  ZoomIn(
                    animate: true,
                    duration: const Duration(seconds: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: Divider(
                              thickness: 2,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ),
                        Text(AppStrings.or, style: AppTextStyles.subtitle),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 20, left: 10),
                            child: Divider(
                              thickness: 2,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  SlideInUp(
                    animate: true,
                    duration: const Duration(seconds: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {},
                          child: Card(
                            color: AppColors.whiteColor,
                            elevation: 8,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                AppImages.appleIcon,
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {},
                          child: Card(
                            color: AppColors.whiteColor,
                            elevation: 8,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                AppImages.facebookIcon,
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {},
                          child: Card(
                            color: AppColors.whiteColor,
                            elevation: 8,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                AppImages.googleIcon,
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  SlideInUp(
                    animate: true,
                    duration: const Duration(seconds: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.doNotAccount,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: AppTextStyles.subtitle,
                        ),
                        CustomTextButton(
                          text: AppStrings.signUp,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
