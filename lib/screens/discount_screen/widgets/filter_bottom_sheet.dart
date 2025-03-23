import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:e_book_ui_template/constants/app_strings.dart';
import 'package:e_book_ui_template/constants/app_text_styles.dart';
import 'package:e_book_ui_template/models/filter_sequence_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../themes/theme.dart';
import '../../../themes/theme_provider.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  int? selectedIndex;

  void toggleSelection(int index) {
    setState(() {
      if (selectedIndex == index) {
        selectedIndex = null;
      } else {
        selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkTheme =
        Provider.of<ThemeProvider>(context).themeData == darkTheme;

    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      minChildSize: 0.2,
      maxChildSize: 0.9,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color:
                isDarkTheme
                    ? AppColors.midnightBlueColor
                    : AppColors.blueAccentColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: [const BoxShadow(color: Colors.black26, blurRadius: 10)],
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppStrings.filter,
                  style: AppTextStyles.appBarTitle,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 15,
                  ),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Text(
                        AppStrings.sequence,
                        style: AppTextStyles.filterTitleStyle,
                      ),
                      Text(
                        AppStrings.sequence,
                        style: AppTextStyles.filterTitleStyle,
                      ),
                      const SizedBox(height: 10),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 40,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                        itemCount: filterSequenceItems.length,
                        itemBuilder: (context, index) {
                          bool isSelected = selectedIndex == index;
                          return InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () => toggleSelection(index),
                            child: Container(
                              decoration: BoxDecoration(
                                color:
                                    isSelected
                                        ? AppColors.greenColor
                                        : AppColors.filledColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  filterSequenceItems[index].item,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'amaranth',
                                    overflow: TextOverflow.ellipsis,
                                    color:
                                        isSelected
                                            ? AppColors.whiteColor
                                            : isDarkTheme
                                            ? AppColors.greyColor
                                            : AppColors.blackColor,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
