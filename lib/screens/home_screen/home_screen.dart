import 'package:e_book_ui_template/screens/home_screen/widgets/home_appbar.dart';
import 'package:e_book_ui_template/screens/home_screen/widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, Object? result) async {
          SystemNavigator.pop(animated: true);
        },
        child: const Column(
          children: [
            HomeAppbar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [SearchInput()]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
