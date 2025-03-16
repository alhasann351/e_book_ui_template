import 'package:animate_do/animate_do.dart';
import 'package:e_book_ui_template/screens/search_screen/widgets/books_searches.dart';
import 'package:e_book_ui_template/screens/search_screen/widgets/popular_search.dart';
import 'package:e_book_ui_template/screens/search_screen/widgets/recent_search.dart';
import 'package:e_book_ui_template/screens/search_screen/widgets/search_input_field.dart';
import 'package:flutter/material.dart';

import '../../constants/app_strings.dart';
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
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SearchInputField(),
                    SizedBox(height: 20),
                    RecentSearch(),
                    SizedBox(height: 20),
                    PopularSearch(),
                    SizedBox(height: 20),
                    BooksSearches(),
                    SizedBox(height: 15),
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
