import 'package:pro_scan/constant/assets.dart';

class OnboardingItem {
  final String headingText;
  final String image;
  final String description;
  const OnboardingItem(
      {required this.description,
      required this.image,
      required this.headingText});
}

List<OnboardingItem> onboardingList = [
  const OnboardingItem(
    headingText: 'Scan all your documents quickly and easily',
    image: Assets.onboarding1,
    description:
        'Lorem ipsum dolor sit amet, consect sed do eiusmod tempor incididunt ut labore et dol',
  ),
  const OnboardingItem(
    headingText: 'You can also edit and customize scan results',
    image: Assets.onboarding2,
    description:
        'Lorem ipsum dolor sit amet, consect sed do eiusmod tempor incididunt ut labore et dol',
  ),
  const OnboardingItem(
    headingText: 'Organize your documents with ProScan now!',
    image: Assets.onboarding3,
    description:
        'Lorem ipsum dolor sit amet, consect sed do eiusmod tempor incididunt ut labore et dol',
  )
];
