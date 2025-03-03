import 'package:e_book_ui_template/constants/app_strings.dart';
import 'package:e_book_ui_template/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      home: HomeScreen(),
    );
  }
}
