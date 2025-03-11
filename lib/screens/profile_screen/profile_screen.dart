import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../themes/theme.dart';
import '../../themes/theme_provider.dart';
import '../../widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkTheme =
        Provider.of<ThemeProvider>(context).themeData == darkTheme;

    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, Object? result) async {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const BottomNavBar()),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
