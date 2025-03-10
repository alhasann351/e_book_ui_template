import 'package:e_book_ui_template/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../themes/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkTheme =
        Provider.of<ThemeProvider>(context).themeData == darkTheme;

    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, Object? result) async {
          SystemNavigator.pop(animated: true);
        },
        child: Column(
          children: [
            Center(
              child: Switch(
                value: isDarkTheme,
                onChanged: (changeTheme) {
                  Provider.of<ThemeProvider>(
                    context,
                    listen: false,
                  ).toggleTheme(changeTheme);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
