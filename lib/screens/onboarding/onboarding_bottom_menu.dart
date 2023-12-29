import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_scan/screens/auth/main_auth_screen.dart';
import 'package:pro_scan/widgets/global_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingBottomMenu extends StatelessWidget {
  final PageController pagecontroller;
  final int pageIndex;
  const OnboardingBottomMenu(
      {super.key, required this.pageIndex, required this.pagecontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmoothPageIndicator(
            controller: pagecontroller,
            count: 3,
            effect: const ExpandingDotsEffect(
                dotWidth: 10,
                dotHeight: 10,
                dotColor: Colors.black12,
                activeDotColor: Colors.blue),
          ),
          const Spacer(),
          const Divider(
            height: 1,
            color: Colors.black12,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GlobalButton(
                    backgroundColor: Colors.blue[50],
                    foregroundColor: Colors.blue,
                    onPressed: () {
                      Get.offAll(() => const MainAuthScreen());
                    },
                    child: const Text("Skip")),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: GlobalButton(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      if (pageIndex == 2) {
                        Get.off(const MainAuthScreen(),
                            transition: Transition.rightToLeft);
                        return;
                      }
                      pagecontroller.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.decelerate);
                    },
                    child: Text(pageIndex == 2 ? "OK" : "Next")),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
