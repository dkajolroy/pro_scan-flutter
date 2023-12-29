import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomBarFloating(
        items: items,
        backgroundColor: Colors.white,
        color: Colors.black54,
        colorSelected: Colors.blue,
        indexSelected: pageIndex,
        onTap: (int index) {
          setState(() {
            pageIndex = index;
          });
        });
  }
}

const List<TabItem> items = [
  TabItem(
    icon: Icons.home_rounded,
    title: 'Home',
  ),
  TabItem(
    icon: Icons.folder,
    title: 'Files',
  ),
  TabItem(
    icon: Icons.star,
    title: 'Primium',
  ),
  TabItem(
    icon: Icons.person,
    title: 'Account',
  ),
];
