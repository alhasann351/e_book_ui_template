import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/models/category_item.dart';
import 'package:e_book_ui_template/screens/category_screen/widgets/see_all_category.dart';
import 'package:flutter/material.dart';

import '../../constants/app_strings.dart';
import '../../constants/app_text_styles.dart';
import '../../widgets/custom_text_button.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: SlideInRight(
        animate: true,
        duration: const Duration(seconds: 2),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    AppStrings.category,
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
                          builder: (context) => const SeeAllCategory(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            GridView.builder(
              padding: const EdgeInsets.only(top: 10),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 6 : 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 8,
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
          ],
        ),
      ),
    );
  }
}
