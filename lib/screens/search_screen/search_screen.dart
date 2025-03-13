import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/screens/search_screen/widgets/books_searches.dart';
import 'package:e_book_ui_template/screens/search_screen/widgets/popular_search.dart';
import 'package:e_book_ui_template/screens/search_screen/widgets/recent_search.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/app_bar_with_back.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SlideInLeft(
              animate: true,
              duration: const Duration(seconds: 2),
              child: const AppBarWithBack(title: AppStrings.searchBook),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SlideInRight(
                      animate: true,
                      duration: const Duration(seconds: 2),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                          right: 20,
                        ),
                        child: TextFormField(
                          cursorColor: AppColors.greenColor,
                          keyboardType: TextInputType.text,
                          style: AppTextStyles.inputTextStyle,
                          decoration: InputDecoration(
                            hintText: AppStrings.search,
                            hintStyle: AppTextStyles.hintTextStyle,
                            prefixIcon: const Icon(
                              Iconsax.search_normal_1_copy,
                              size: 28,
                              color: AppColors.greyColor,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              color: AppColors.greenColor,
                              icon: const Icon(
                                Iconsax.close_circle_copy,
                                size: 28,
                                color: AppColors.greyColor,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.green,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const RecentSearch(),
                    const SizedBox(height: 20),
                    const PopularSearch(),
                    const SizedBox(height: 20),
                    const BooksSearches(),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
