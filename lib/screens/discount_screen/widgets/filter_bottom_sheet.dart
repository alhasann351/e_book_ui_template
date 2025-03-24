import 'package:e_book_ui_template/constants/app_colors.dart';
import 'package:e_book_ui_template/constants/app_strings.dart';
import 'package:e_book_ui_template/constants/app_text_styles.dart';
import 'package:e_book_ui_template/models/filter_publication_item.dart';
import 'package:e_book_ui_template/models/filter_writer_item.dart';
import 'package:e_book_ui_template/widgets/custom_elevated_button.dart';
import 'package:e_book_ui_template/widgets/custom_outline_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../models/filter_category_item.dart';
import '../../../models/filter_rating_item.dart';
import '../../../models/filter_sequence_item.dart';
import '../../../themes/theme.dart';
import '../../../themes/theme_provider.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  List<int> sequenceSelectedItems = [];
  void toggleSequenceSelection(int index) {
    setState(() {
      if (sequenceSelectedItems.contains(index)) {
        sequenceSelectedItems.remove(index);
      } else {
        sequenceSelectedItems.add(index);
      }
    });
  }

  List<int> categorySelectedItems = [];
  void toggleCategorySelection(int index) {
    setState(() {
      if (categorySelectedItems.contains(index)) {
        categorySelectedItems.remove(index);
      } else {
        categorySelectedItems.add(index);
      }
    });
  }

  List<int> writerSelectedItems = [];
  void toggleWriterSelection(int index) {
    setState(() {
      if (writerSelectedItems.contains(index)) {
        writerSelectedItems.remove(index);
      } else {
        writerSelectedItems.add(index);
      }
    });
  }

  List<int> publicationSelectedItems = [];
  void togglePublicationSelection(int index) {
    setState(() {
      if (publicationSelectedItems.contains(index)) {
        publicationSelectedItems.remove(index);
      } else {
        publicationSelectedItems.add(index);
      }
    });
  }

  List<int> ratingSelectedItems = [];
  void toggleRatingSelection(int index) {
    setState(() {
      if (ratingSelectedItems.contains(index)) {
        ratingSelectedItems.remove(index);
      } else {
        ratingSelectedItems.add(index);
      }
    });
  }

  SfRangeValues _values = const SfRangeValues(100, 300);

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
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 8, // Horizontal spacing between items
                        runSpacing: 8, // Vertical spacing
                        children: List.generate(filterSequenceItems.length, (
                          index,
                        ) {
                          bool isSelected = sequenceSelectedItems.contains(
                            index,
                          );
                          return GestureDetector(
                            onTap: () => toggleSequenceSelection(index),
                            child: IntrinsicWidth(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 10,
                                ),
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
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        AppStrings.category,
                        style: AppTextStyles.filterTitleStyle,
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: List.generate(filterCategoryItems.length, (
                          index,
                        ) {
                          bool isSelected = categorySelectedItems.contains(
                            index,
                          );
                          return GestureDetector(
                            onTap: () => toggleCategorySelection(index),
                            child: IntrinsicWidth(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isSelected
                                          ? AppColors.greenColor
                                          : AppColors.filledColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    filterCategoryItems[index].item,
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
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        AppStrings.writer,
                        style: AppTextStyles.filterTitleStyle,
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: List.generate(filterWriterItems.length, (
                          index,
                        ) {
                          bool isSelected = writerSelectedItems.contains(index);
                          return GestureDetector(
                            onTap: () => toggleWriterSelection(index),
                            child: IntrinsicWidth(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isSelected
                                          ? AppColors.greenColor
                                          : AppColors.filledColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    filterWriterItems[index].item,
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
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        AppStrings.publication,
                        style: AppTextStyles.filterTitleStyle,
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: List.generate(filterPublicationItems.length, (
                          index,
                        ) {
                          bool isSelected = publicationSelectedItems.contains(
                            index,
                          );
                          return GestureDetector(
                            onTap: () => togglePublicationSelection(index),
                            child: IntrinsicWidth(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isSelected
                                          ? AppColors.greenColor
                                          : AppColors.filledColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    filterPublicationItems[index].item,
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
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        AppStrings.rating,
                        style: AppTextStyles.filterTitleStyle,
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: List.generate(filterRatingItems.length, (
                          index,
                        ) {
                          bool isSelected = ratingSelectedItems.contains(index);
                          return GestureDetector(
                            onTap: () => toggleRatingSelection(index),
                            child: IntrinsicWidth(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      isSelected
                                          ? AppColors.greenColor
                                          : AppColors.filledColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Wrap(
                                    children: [
                                      Text(
                                        filterRatingItems[index].item,
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
                                      const SizedBox(width: 2),
                                      const Icon(
                                        Icons.star,
                                        color: AppColors.redColor,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        AppStrings.price,
                        style: AppTextStyles.filterTitleStyle,
                      ),
                      SfRangeSlider(
                        min: 0,
                        max: 500,
                        values: _values,
                        activeColor: AppColors.greenColor,
                        inactiveColor: AppColors.filledColor,
                        tooltipShape: const SfPaddleTooltipShape(),
                        interval: 100,
                        showTicks: true,
                        showLabels: true,
                        onChanged: (SfRangeValues values) {
                          setState(() {
                            _values = values;
                          });
                        },
                      ),
                      const SizedBox(height: 60),
                      Center(
                        child: Wrap(
                          spacing: 50,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 150,
                              child: CustomOutlineButton(
                                text: AppStrings.reset,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 150,
                              child: CustomElevatedButton(
                                buttonText: AppStrings.apply,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
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
