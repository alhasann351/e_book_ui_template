import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/widgets/rating_icons.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../../constants/app_text_styles.dart';
import '../../../models/books_search_item.dart';

class BooksSearches extends StatelessWidget {
  const BooksSearches({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ZoomIn(
          animate: true,
          duration: const Duration(seconds: 4),
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                AppStrings.booksSearches,
                style: AppTextStyles.mediumTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SizedBox(
            height: 312,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: booksSearchItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: SizedBox(
                    width: 140,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {},
                        child: ZoomIn(
                          animate: true,
                          duration: const Duration(seconds: 4),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  booksSearchItems[index].bookImagePath,
                                  fit: BoxFit.cover,
                                  height: 150,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  left: 8,
                                  right: 8,
                                ),
                                child: Text(
                                  booksSearchItems[index].bookName,
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
                                  booksSearchItems[index].bookWriterName,
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  style: AppTextStyles.bottomNavBarStyle,
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
                                      '(${booksSearchItems[index].bookRatingNumber.toString()})',
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      style: AppTextStyles.bottomNavBarStyle,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                  right: 8,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Price: \$${booksSearchItems[index].bookPrice.toString()}',
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      style: AppTextStyles.bookPriceStyle,
                                    ),
                                  ],
                                ),
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
    );
  }
}
