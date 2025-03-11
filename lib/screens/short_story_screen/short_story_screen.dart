import 'package:flutter/material.dart';

import '../../widgets/bottom_nav_bar.dart';

class ShortStoryScreen extends StatelessWidget {
  const ShortStoryScreen({super.key});

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
        child: const Center(child: Text('Short Story Screen')),
      ),
    );
  }
}
