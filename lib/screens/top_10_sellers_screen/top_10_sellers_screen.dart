import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:e_book_ui_template/models/top_10_sellers.dart';
import 'package:flutter/material.dart';

import '../../constants/app_strings.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_bar_with_back.dart';

class Top10SellersScreen extends StatelessWidget {
  const Top10SellersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SlideInLeft(
            animate: true,
            duration: const Duration(seconds: 2),
            child: const AppBarWithBack(title: AppStrings.topBestSellers),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 75, right: 20, left: 20),
              child: SlideInRight(
                animate: true,
                duration: const Duration(seconds: 2),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: top10Sellers.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            backgroundColor: AppColors.yellowColor,
                            child: Text(
                              '#${top10Sellers[index].topRankNumber.toString()}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.topSellerRankTextStyle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: ClipRRect(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              top10Sellers[index].bookImagePath,
                              height: 170,
                              width: 130,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 145,
                          top: 10,
                          right: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                top10Sellers[index].bookName,
                                maxLines: 1,
                                style: AppTextStyles.mediumTextStyle,
                              ),
                              Text(
                                top10Sellers[index].bookWriterName,
                                maxLines: 1,
                                style: AppTextStyles.bookNameStyle,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Flexible(
                                    child: Icon(
                                      Icons.star,
                                      size: 20,
                                      color: AppColors.vividOrangeColor,
                                    ),
                                  ),
                                  const Flexible(
                                    child: Icon(
                                      Icons.star,
                                      size: 20,
                                      color: AppColors.vividOrangeColor,
                                    ),
                                  ),
                                  const Flexible(
                                    child: Icon(
                                      Icons.star,
                                      size: 20,
                                      color: AppColors.vividOrangeColor,
                                    ),
                                  ),
                                  const Flexible(
                                    child: Icon(
                                      Icons.star,
                                      size: 20,
                                      color: AppColors.vividOrangeColor,
                                    ),
                                  ),
                                  const Flexible(
                                    child: Icon(
                                      Icons.star,
                                      size: 20,
                                      color: AppColors.vividOrangeColor,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Flexible(
                                    child: Text(
                                      '(${top10Sellers[index].bookRatingNumber.toString()})',
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      style:
                                          AppTextStyles.discountSubtitleStyle,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Price: \$${top10Sellers[index].bookPrice.toString()}',
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
          ),
        ],
      ),
    );
  }
}
