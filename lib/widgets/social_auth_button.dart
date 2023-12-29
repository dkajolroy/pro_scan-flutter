import 'package:flutter/material.dart';

class SocialAuthButton extends StatelessWidget {
  final void Function()? onPressed;
  final String lebel;
  final Widget icon;

  const SocialAuthButton(
      {required this.lebel,
      required this.onPressed,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: icon,
      style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(width: 1, color: Colors.black12)),
          padding: const EdgeInsets.symmetric(vertical: 14)),
      label: Text(lebel),
    );
  }
}
