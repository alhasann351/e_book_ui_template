import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/screens/authentication_screen/sign_in_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_images.dart';
import '../../constants/app_strings.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_button.dart';
import '../home_screen/home_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool showPassword = true;
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15),
                SlideInDown(
                  animate: true,
                  duration: Duration(seconds: 2),
                  child: Image.asset(
                    AppImages.appIcon,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 25),
                ZoomIn(
                  animate: true,
                  duration: Duration(seconds: 4),
                  child: Text(
                    AppStrings.createAccount,
                    style: AppTextStyles.title,
                  ),
                ),
                SizedBox(height: 25),
                SlideInLeft(
                  animate: true,
                  duration: Duration(seconds: 2),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: IntlPhoneField(
                      pickerDialogStyle: PickerDialogStyle(
                        searchFieldInputDecoration: InputDecoration(
                          icon: Icon(Icons.search_outlined),
                          hintText: AppStrings.search,
                          hintStyle: AppTextStyles.hintTextStyle,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
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
                        prefixIcon: Icon(
                          Icons.person_2_outlined,
                          size: 28,
                          color: AppColors.greyColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.greenColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.redColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SlideInRight(
                  animate: true,
                  duration: Duration(seconds: 2),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      cursorColor: AppColors.greenColor,
                      style: AppTextStyles.inputTextStyle,
                      decoration: InputDecoration(
                        hintText: AppStrings.name,
                        hintStyle: AppTextStyles.hintTextStyle,
                        prefixIcon: Icon(
                          Icons.person_2_outlined,
                          size: 28,
                          color: AppColors.greyColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SlideInLeft(
                  animate: true,
                  duration: Duration(seconds: 2),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: AppColors.greenColor,
                      style: AppTextStyles.inputTextStyle,
                      decoration: InputDecoration(
                        hintText: AppStrings.email,
                        hintStyle: AppTextStyles.hintTextStyle,
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: 28,
                          color: AppColors.greyColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SlideInRight(
                  animate: true,
                  duration: Duration(seconds: 2),
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
                        prefixIcon: Icon(
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
                          borderSide: BorderSide(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                ZoomIn(
                  animate: true,
                  duration: Duration(seconds: 4),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Checkbox(
                          activeColor: AppColors.greenColor,
                          checkColor: AppColors.whiteColor,
                          value: checkBox,
                          onChanged: (value) {
                            setState(() {
                              checkBox = !checkBox;
                            });
                          },
                        ),
                        Text(AppStrings.rememberMe, style: AppTextStyles.body),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                SlideInLeft(
                  animate: true,
                  duration: Duration(seconds: 2),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: CustomElevatedButton(
                        buttonText: AppStrings.signUp,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                ZoomIn(
                  animate: true,
                  duration: Duration(seconds: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: Divider(
                            thickness: 2,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ),
                      Text(AppStrings.or, style: AppTextStyles.subtitle),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 10),
                          child: Divider(
                            thickness: 2,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                SlideInUp(
                  animate: true,
                  duration: Duration(seconds: 2),
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
                            padding: EdgeInsets.all(10),
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
                            padding: EdgeInsets.all(10),
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
                            padding: EdgeInsets.all(10),
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
                SizedBox(height: 25),
                SlideInUp(
                  animate: true,
                  duration: Duration(seconds: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.alreadyAccount,
                        maxLines: 1,
                        style: AppTextStyles.subtitle,
                      ),
                      CustomTextButton(
                        text: AppStrings.signIn,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInEmailScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
