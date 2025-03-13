import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/screens/search_screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_strings.dart';
import '../../../constants/app_text_styles.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideInRight(
      animate: true,
      duration: const Duration(seconds: 2),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: TextFormField(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            );
          },
          showCursor: false,
          keyboardType: TextInputType.none,
          style: AppTextStyles.inputTextStyle,
          decoration: InputDecoration(
            hintText: AppStrings.search,
            hintStyle: AppTextStyles.hintTextStyle,
            prefixIcon: const Icon(
              Iconsax.search_normal_1_copy,
              size: 28,
              color: AppColors.greyColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
