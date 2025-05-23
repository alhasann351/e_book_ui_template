import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/widgets/custom_outline_button.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../../constants/app_text_styles.dart';
import '../../../models/recent_search_item.dart';

class RecentSearch extends StatelessWidget {
  const RecentSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideInLeft(
      animate: true,
      duration: const Duration(seconds: 2),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                AppStrings.recentSearches,
                style: AppTextStyles.mediumTextStyle,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: recentSearchItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 40,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return CustomOutlineButton(
                  text: recentSearchItems[index].item,
                  onPressed: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
