import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/models/discount_10_percent_item.dart';
import 'package:e_book_ui_template/widgets/app_bar_with_back.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../../constants/app_text_styles.dart';
import '../../../widgets/rating_icons.dart';

class Discount10PercentScreen extends StatelessWidget {
  const Discount10PercentScreen({super.key});

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
                title: AppStrings.discount10Percentage,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 10,
                  top: 5,
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 312,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: discount10PercentItems.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            discount10PercentItems[index].bookImagePath,
                            fit: BoxFit.cover,
                            height: 150,
                            width: 150,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 8,
                            right: 8,
                          ),
                          child: Text(
                            discount10PercentItems[index].bookName,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: AppTextStyles.bookNameStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            discount10PercentItems[index].bookWriterName,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: AppTextStyles.discountSubtitleStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 8,
                            right: 8,
                          ),
                          child: Column(
                            children: [
                              const RatingIcons(),
                              Text(
                                '(${discount10PercentItems[index].bookRatingNumber.toString()})',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: AppTextStyles.discountSubtitleStyle,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Column(
                            children: [
                              Text(
                                'Price: \$${discount10PercentItems[index].bookPrice.toString()}',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: AppTextStyles.discountBookPriceStyle,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Column(
                            children: [
                              Text(
                                '(\$${discount10PercentItems[index].discountBookPrice.toString()})',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: AppTextStyles.bookPriceStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
