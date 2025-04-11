import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/constants/app_images.dart';
import 'package:e_book_ui_template/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../constants/app_text_styles.dart';
import '../../../models/category_item.dart';
import '../../../widgets/app_bar_with_filter.dart';
import '../../../widgets/rating_icons.dart';

class CategoryBookScreen extends StatelessWidget {
  final List<CategoryItem> items;
  final String categoryNameAppbarTitle;
  const CategoryBookScreen({
    super.key,
    required this.items,
    required this.categoryNameAppbarTitle,
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
              child: AppBarWithFilter(title: categoryNameAppbarTitle),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 10,
                  top: 5,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ZoomIn(
                          animate: true,
                          duration: const Duration(seconds: 4),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: Card(
                              elevation: 2,
                              clipBehavior: Clip.antiAlias,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 5,
                                    bottom: 5,
                                    left: 10,
                                    child: Image.asset(
                                      AppImages.top10,
                                      height: 32,
                                      width: 32,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Positioned(
                                    left: 50,
                                    top: 10,
                                    right: 40,
                                    child: Text(
                                      AppStrings.topBestSellers,
                                      maxLines: 1,
                                      style: AppTextStyles.bookNameStyle,
                                    ),
                                  ),
                                  const Positioned(
                                    right: 5,
                                    top: 10,
                                    child: Icon(
                                      Iconsax.arrow_right_2,
                                      size: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisExtent: 290,
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
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 8,
                                  ),
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
                                        style:
                                            AppTextStyles.discountSubtitleStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    right: 8,
                                  ),
                                  child: Text(
                                    '(\$${items[index].bookPrice.toString()})',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style: AppTextStyles.bookPriceStyle,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
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
