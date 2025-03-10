import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/screens/authentication_screen/password_create_successful_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_images.dart';
import '../../constants/app_strings.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_bar_with_back.dart';
import '../../widgets/custom_elevated_button.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
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
              child: const AppBarWithBack(title: AppStrings.passwordTitle),
            ),
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
                            AppImages.passwordImage,
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
                          AppStrings.createPassword,
                          style: AppTextStyles.appBarTitle,
                        ),
                      ),
                      const SizedBox(height: 15),
                      ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 4),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            AppStrings.passwordSubtitle,
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            style: AppTextStyles.subtitle,
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      SlideInRight(
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
                      const SizedBox(height: 15),
                      SlideInRight(
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
                              hintText: AppStrings.confirmPassword,
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
                              buttonText: AppStrings.confirm,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) =>
                                            const PasswordCreateSuccessfulScreen(),
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
