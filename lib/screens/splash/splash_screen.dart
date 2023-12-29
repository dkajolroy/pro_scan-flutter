import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pro_scan/constant/assets.dart';
import 'package:pro_scan/screens/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    _timer();
    super.initState();
  }

  void _timer() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Get.off(() => const OnBoardingScreen(),
          transition: Transition.rightToLeft);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            const Spacer(),
            Column(
              children: [
                SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      Assets.icon,
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "ProScan",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Spacer(),
            const Spacer(),
            Lottie.asset(
              Assets.splashLoading,
              width: 150,
              height: 90,
              fit: BoxFit.fill,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
