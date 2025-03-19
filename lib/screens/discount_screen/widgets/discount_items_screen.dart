import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/screens/discount_screen/widgets/discount_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_text_styles.dart';
import '../../../models/discount_category.dart';
import '../../../widgets/rating_icons.dart';

class DiscountItemsScreen extends StatelessWidget {
  final List<DiscountItem> items;
  final String discountItemAppbarTitle;
  const DiscountItemsScreen({
    super.key,
    required this.items,
    required this.discountItemAppbarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SlideInLeft(
              animate: true,
              duration: const Duration(seconds: 2),
              child: DiscountAppBar(title: discountItemAppbarTitle),
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
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ZoomIn(
                      animate: true,
                      duration: const Duration(seconds: 4),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              items[index].bookImagePath,
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
                              items[index].bookName,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              style: AppTextStyles.bookNameStyle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              items[index].bookWriterName,
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
                                  '(${items[index].bookRatingNumber.toString()})',
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
                                  'Price: \$${items[index].bookPrice.toString()}',
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
                                  '(\$${items[index].discountBookPrice.toString()})',
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  style: AppTextStyles.bookPriceStyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
