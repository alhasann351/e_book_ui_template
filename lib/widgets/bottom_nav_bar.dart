import 'package:e_book_ui_template/constants/app_strings.dart';
import 'package:e_book_ui_template/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../screens/best_sellers_screen/best_sellers_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/more_books_screen/more_books_screens.dart';
import '../screens/profile_screen/profile_screen.dart';
import '../screens/short_story_screen/short_story_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var currentIndex = 0;
  var screens = [
    const HomeScreen(),
    const BestSellersScreen(),
    const ShortStoryScreen(),
    const MoreBooksScreens(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: AppTextStyles.bottomNavBarStyle,
        unselectedLabelStyle: AppTextStyles.bottomNavBarStyle,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Iconsax.home_1_copy),
            label: AppStrings.home,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Iconsax.chart_2_copy),
            label: AppStrings.bestSellers,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Iconsax.document_text_1_copy),
            label: AppStrings.shortStory,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Iconsax.more_2_copy),
            label: AppStrings.moreBooks,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_2user_copy),
            label: AppStrings.profile,
          ),
        ],
      ),
    );
  }
}
