import 'package:flutter/material.dart';
import 'package:pro_scan/constant/assets.dart';

AppBar homeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    title: Row(
      children: [
        SizedBox(
          width: 30,
          height: 30,
          child: Image.asset(Assets.icon),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "ProScan",
          style: TextStyle(fontWeight: FontWeight.w600),
        )
      ],
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 30,
          )),
      const SizedBox(
        width: 10,
      )
    ],
  );
}
