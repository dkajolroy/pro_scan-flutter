import 'package:flutter/material.dart';
import 'package:pro_scan/navigation/bottom_navigation.dart';
import 'package:pro_scan/screens/home_screen.dart';

class NavigationController extends StatelessWidget {
  const NavigationController({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: 0,
        children: screens,
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

final screens = [const HomeScreen()];
