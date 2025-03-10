import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/app_images.dart';
import '../../constants/app_strings.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/custom_elevated_button.dart';

class PasswordCreateSuccessfulScreen extends StatelessWidget {
  const PasswordCreateSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                      AppImages.doneImage,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ZoomIn(
                  animate: true,
                  duration: const Duration(seconds: 4),
                  child: Text(
                    AppStrings.congratulationsTitle,
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
                      AppStrings.congratulationsSubtitle,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: AppTextStyles.subtitle,
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
                              builder: (context) => const HomeScreen(),
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
    );
  }
}
