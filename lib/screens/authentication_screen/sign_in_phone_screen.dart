import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/screens/authentication_screen/otp_verification_screen.dart';
import 'package:e_book_ui_template/screens/authentication_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_images.dart';
import '../../constants/app_strings.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_bar_with_back.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_button.dart';

class SignInPhoneScreen extends StatefulWidget {
  const SignInPhoneScreen({super.key});

  @override
  State<SignInPhoneScreen> createState() => _SignInPhoneScreenState();
}

class _SignInPhoneScreenState extends State<SignInPhoneScreen> {
  bool checkBox = false;

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
                          AppStrings.loginYourAccount,
                          style: AppTextStyles.title,
                        ),
                      ),
                      const SizedBox(height: 25),
                      SlideInLeft(
                        animate: true,
                        duration: const Duration(seconds: 2),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: IntlPhoneField(
                            pickerDialogStyle: PickerDialogStyle(
                              searchFieldInputDecoration: InputDecoration(
                                icon: const Icon(Icons.search_outlined),
                                hintText: AppStrings.search,
                                hintStyle: AppTextStyles.hintTextStyle,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: AppColors.greenColor,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              searchFieldCursorColor: AppColors.greenColor,
                              countryCodeStyle: AppTextStyles.inputTextStyle,
                              countryNameStyle: AppTextStyles.inputTextStyle,
                            ),
                            dropdownIcon: const Icon(
                              Icons.arrow_drop_down_outlined,
                              color: AppColors.greyColor,
                            ),
                            dropdownTextStyle: AppTextStyles.body,
                            keyboardType: TextInputType.phone,
                            cursorColor: AppColors.greenColor,
                            style: AppTextStyles.inputTextStyle,
                            decoration: InputDecoration(
                              hintText: AppStrings.phone,
                              hintStyle: AppTextStyles.hintTextStyle,
                              prefixIcon: const Icon(
                                Icons.person_2_outlined,
                                size: 28,
                                color: AppColors.greyColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: AppColors.greenColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: AppColors.redColor,
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
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Checkbox(
                                  activeColor: AppColors.greenColor,
                                  checkColor: AppColors.whiteColor,
                                  value: checkBox,
                                  onChanged: (value) {
                                    setState(() {
                                      checkBox = !checkBox;
                                    });
                                  },
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  AppStrings.rememberMe,
                                  style: AppTextStyles.body,
                                ),
                              ),
                            ],
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
                              buttonText: AppStrings.signIn,
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
                            Flexible(
                              child: InkWell(
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
                            ),
                            Flexible(
                              child: InkWell(
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
                            ),
                            Flexible(
                              child: InkWell(
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
                            Flexible(
                              child: Text(
                                AppStrings.doNotAccount,
                                maxLines: 1,
                                style: AppTextStyles.subtitle,
                              ),
                            ),
                            Flexible(
                              child: CustomTextButton(
                                text: AppStrings.signUp,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => const SignupScreen(),
                                    ),
                                  );
                                },
                              ),
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
