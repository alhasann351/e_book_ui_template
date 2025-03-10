import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:e_book_ui_template/constants/app_strings.dart';
import 'package:e_book_ui_template/constants/app_text_styles.dart';
import 'package:e_book_ui_template/screens/authentication_screen/signup_screen.dart';
import 'package:e_book_ui_template/screens/home_screen/home_screen.dart';
import 'package:e_book_ui_template/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

import '../../constants/app_images.dart';
import '../../widgets/app_bar_with_back.dart';
import '../../widgets/custom_elevated_button.dart';
import 'forgot_password_screen.dart';

class SignInEmailScreen extends StatefulWidget {
  const SignInEmailScreen({super.key});

  @override
  State<SignInEmailScreen> createState() => _SignInEmailScreenState();
}

class _SignInEmailScreenState extends State<SignInEmailScreen> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SlideInLeft(
              animate: true,
              duration: const Duration(seconds: 2),
              child: const AppBarWithBack(title: ''),
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
                        child: Image.asset(
                          AppImages.appIcon,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 25),
                      ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 4),
                        child: Text(
                          AppStrings.signInAccount,
                          style: AppTextStyles.title,
                        ),
                      ),
                      const SizedBox(height: 25),
                      SlideInRight(
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
                                Icons.email_outlined,
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
                      SlideInLeft(
                        animate: true,
                        duration: const Duration(seconds: 2),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            cursorColor: AppColors.greenColor,
                            style: AppTextStyles.inputTextStyle,
                            obscureText: showPassword,
                            decoration: InputDecoration(
                              hintText: AppStrings.password,
                              hintStyle: AppTextStyles.hintTextStyle,
                              prefixIcon: const Icon(
                                Icons.lock_outline_rounded,
                                size: 28,
                                color: AppColors.greyColor,
                              ),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                                radius: 10,
                                child: Icon(
                                  showPassword
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                  color: AppColors.greyColor,
                                  size: 28,
                                ),
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
                      const SizedBox(height: 5),
                      SlideInRight(
                        animate: true,
                        duration: const Duration(seconds: 2),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: CustomTextButton(
                              text: AppStrings.forgotPassword,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) =>
                                            const ForgotPasswordScreen(),
                                  ),
                                );
                              },
                            ),
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
                              buttonText: AppStrings.signIn,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
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
          ],
        ),
      ),
    );
  }
}
