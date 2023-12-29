import 'package:flutter/material.dart';
import 'package:pro_scan/constant/onboarding.dart';
import 'package:pro_scan/screens/onboarding/boarding_tile.dart';
import 'package:pro_scan/screens/onboarding/onboarding_bottom_menu.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _pagecontroller = PageController();
  int pageIndex = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    _pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: PageView.builder(
          scrollDirection: Axis.horizontal,
          onPageChanged: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          controller: _pagecontroller,
          itemCount: onboardingList.length,
          itemBuilder: (context, index) {
            OnboardingItem item = onboardingList[index];

            return BoardingTile(
              headingText: item.headingText,
              image: item.image,
              description: item.description,
            );
          },
        ),
        bottomNavigationBar: OnboardingBottomMenu(
            pagecontroller: _pagecontroller, pageIndex: pageIndex));
  }
}
