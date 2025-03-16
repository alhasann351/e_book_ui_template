import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:e_book_ui_template/constants/app_strings.dart';
import 'package:e_book_ui_template/constants/app_text_styles.dart';
import 'package:e_book_ui_template/models/discount_item.dart';
import 'package:e_book_ui_template/widgets/app_bar_with_back.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SlideInLeft(
            animate: true,
            duration: const Duration(seconds: 2),
            child: const AppBarWithBack(title: AppStrings.specialDiscounts),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ZoomIn(
                        animate: true,
                        duration: const Duration(seconds: 4),
                        child: Card(
                          elevation: 2,
                          clipBehavior: Clip.antiAlias,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Stack(
                              children: [
                                const Icon(
                                  Iconsax.discount_shape,
                                  color: AppColors.greenColor,
                                  size: 45,
                                ),
                                const SizedBox(width: 10),
                                Positioned(
                                  left: 50,
                                  top: 0,
                                  right: 40,
                                  child: Text(
                                    discountItems[index].title,
                                    maxLines: 1,
                                    style: AppTextStyles.discountTitleStyle,
                                  ),
                                ),
                                Positioned(
                                  left: 50,
                                  top: 25,
                                  right: 40,
                                  child: Text(
                                    discountItems[index].subtitle,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppTextStyles.discountSubtitleStyle,
                                  ),
                                ),
                                const Positioned(
                                  right: 5,
                                  top: 10,
                                  child: Icon(Iconsax.arrow_right_2, size: 25),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
