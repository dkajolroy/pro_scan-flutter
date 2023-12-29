import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_scan/constant/assets.dart';
import 'package:pro_scan/screens/home_screen.dart';
import 'package:pro_scan/widgets/global_button.dart';
import 'package:pro_scan/widgets/social_auth_button.dart';

class MainAuthScreen extends StatelessWidget {
  const MainAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              SizedBox(
                height: screenSize.width / 1.5,
                width: screenSize.width / 1.5,
                child: Image.asset(
                  Assets.mainAuthIcon,
                  fit: BoxFit.contain,
                ),
              ),
              const Text(
                "Let's you in",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: SocialAuthButton(
                  icon: SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset(Assets.google, fit: BoxFit.contain)),
                  lebel: "Continue with Google",
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: SocialAuthButton(
                  icon: SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset(Assets.facebook, fit: BoxFit.contain)),
                  lebel: "Continue with Facebook",
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: SocialAuthButton(
                  icon: SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset(Assets.apple, fit: BoxFit.contain)),
                  lebel: "Continue with Apple",
                  onPressed: () {},
                ),
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      height: 20,
                      color: Colors.black12,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("or"),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black12,
                      height: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: GlobalButton(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      Get.off(() => const HomeScreen(),
                          transition: Transition.zoom);
                    },
                    child: const Text("Sign in with password")),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Don't have an account?"),
                TextButton(onPressed: () {}, child: const Text("Sign Up"))
              ]),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
