import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../../constants/app_text_styles.dart';
import '../../../models/popular_search_item.dart';
import '../../../widgets/custom_outline_button.dart';

class PopularSearch extends StatelessWidget {
  const PopularSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideInRight(
      animate: true,
      duration: const Duration(seconds: 2),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                AppStrings.popularSearches,
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
              itemCount: popularSearchItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 40,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return CustomOutlineButton(
                  text: popularSearchItems[index].item,
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
