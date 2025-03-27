import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../../constants/app_text_styles.dart';
import '../../../models/category_item.dart';
import '../../../widgets/app_bar_with_back.dart';

class SeeAllCategory extends StatelessWidget {
  const SeeAllCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SlideInLeft(
              animate: true,
              duration: const Duration(seconds: 2),
              child: const AppBarWithBack(title: AppStrings.category),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        MediaQuery.of(context).size.width > 600 ? 6 : 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: categoryItems.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Flexible(
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              foregroundImage: AssetImage(
                                categoryItems[index].imagePath,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              categoryItems[index].title,
                              style: AppTextStyles.bottomNavBarStyle,
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
