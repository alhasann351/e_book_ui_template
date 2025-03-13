import 'package:e_book_ui_template/constants/app_images.dart';
import 'package:e_book_ui_template/screens/cart_screen/cart_screen.dart';
import 'package:e_book_ui_template/screens/notification_screen/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_strings.dart';
import '../../../constants/app_text_styles.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
      child: AppBar(
        leading: Image.asset(AppImages.appIcon),
        leadingWidth: 45,
        title: Text(
          AppStrings.homeAppbarTitle,
          style: AppTextStyles.appBarTitle,
        ),
        actions: [
          Flexible(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationScreen(),
                  ),
                );
              },
              color: AppColors.greenColor,
              icon: const SizedBox(
                height: 45,
                width: 45,
                child: CircleAvatar(
                  backgroundColor: AppColors.greenColor,
                  child: Icon(
                    Iconsax.notification_bing_copy,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CartScreen()),
                );
              },
              color: AppColors.greenColor,
              icon: const SizedBox(
                height: 45,
                width: 45,
                child: CircleAvatar(
                  backgroundColor: AppColors.greenColor,
                  child: Icon(
                    Iconsax.shopping_cart_copy,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
