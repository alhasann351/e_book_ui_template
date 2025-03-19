import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_book_ui_template/constants/app_strings.dart';
import 'package:e_book_ui_template/constants/app_text_styles.dart';
import 'package:e_book_ui_template/models/discount_category.dart';
import 'package:e_book_ui_template/screens/discount_screen/discount_screen.dart';
import 'package:e_book_ui_template/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';
import '../../discount_screen/widgets/discount_items_screen.dart';

class DiscountSlider extends StatefulWidget {
  const DiscountSlider({super.key});

  @override
  State<DiscountSlider> createState() => _DiscountSliderState();
}

class _DiscountSliderState extends State<DiscountSlider> {
  final discountImages = [
    AppImages.discountImage1,
    AppImages.discountImage2,
    AppImages.discountImage3,
  ];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      animate: true,
      duration: const Duration(seconds: 4),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    AppStrings.specialDiscounts,
                    style: AppTextStyles.appBarTitle,
                  ),
                ),
                Flexible(
                  child: CustomTextButton(
                    text: AppStrings.seeAll,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DiscountScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                initialPage: currentIndex,
                enableInfiniteScroll: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              itemCount: discountImages.length,
              itemBuilder: (context, index, realIndex) {
                return InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => DiscountItemsScreen(
                              items: discountCategories[index].items,
                              discountItemAppbarTitle:
                                  discountCategories[index]
                                      .discountItemAppbarTitle,
                            ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        discountImages[index],
                        fit: BoxFit.fill,
                        width: 1000,
                      ),
                    ),
                  ),
                );
              },
            ),
            AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: discountImages.length,
              effect: const WormEffect(
                activeDotColor: AppColors.greenColor,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
