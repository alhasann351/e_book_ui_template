import 'package:e_book_ui_template/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../constants/app_colors.dart';
import 'filter_bottom_sheet.dart';

class DiscountAppBar extends StatelessWidget {
  final String title;
  const DiscountAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: IconButton(
                color: AppColors.greenColor,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const SizedBox(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundColor: AppColors.greenColor,
                    child: Icon(
                      Iconsax.arrow_left_2_copy,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.appBarTitle,
              ),
            ),
            Flexible(
              child: IconButton(
                color: AppColors.greenColor,
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return const FilterBottomSheet();
                    },
                  );
                },
                icon: const SizedBox(
                  height: 45,
                  width: 45,
                  child: CircleAvatar(
                    backgroundColor: AppColors.greenColor,
                    child: Icon(
                      Iconsax.document_filter_copy,
                      color: AppColors.whiteColor,
                    ),
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
