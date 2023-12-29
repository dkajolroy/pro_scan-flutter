import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_scan/constant/tools.dart';
import 'package:pro_scan/screens/age_calculator/age_calculator_screen.dart';
import 'package:pro_scan/screens/scanner/qr_bar_scanner.dart';

class ToolsTile extends StatelessWidget {
  final Tool item;
  const ToolsTile({required this.item, super.key});

  void switchScreen() {
    switch (item.privateKey) {
      case "qr-code":
        {
          Get.to(const QrBarScannerScreen(),
              transition: Transition.leftToRight);
        }
        break;
      case "age-calculator":
        {
          Get.to(const AgeCalculatorScreen(),
              transition: Transition.rightToLeft);
        }
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: FloatingActionButton(
              onPressed: switchScreen,
              backgroundColor: item.backgroundColor,
              foregroundColor: item.iconColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(200)),
              child: Icon(
                item.icon,
                size: 22,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          item.name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
