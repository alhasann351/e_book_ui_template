import 'package:flutter/material.dart';

import '../../widgets/bottom_nav_bar.dart';

class MoreBooksScreens extends StatelessWidget {
  const MoreBooksScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, Object? result) async {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const BottomNavBar()),
          );
        },
        child: const Center(child: Text('More Books Screen')),
      ),
    );
  }
}
