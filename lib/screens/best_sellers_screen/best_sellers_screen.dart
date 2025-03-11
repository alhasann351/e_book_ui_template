import 'package:flutter/material.dart';

import '../../widgets/bottom_nav_bar.dart';

class BestSellersScreen extends StatelessWidget {
  const BestSellersScreen({super.key});

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
        child: const Center(child: Text('Best Sellers Screen')),
      ),
    );
  }
}
