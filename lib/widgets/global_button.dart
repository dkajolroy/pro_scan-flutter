import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final EdgeInsetsGeometry? padding;

  const GlobalButton(
      {this.backgroundColor,
      this.padding,
      this.foregroundColor,
      required this.onPressed,
      required this.child,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: padding ?? const EdgeInsets.symmetric(vertical: 18)),
      child: child,
    );
  }
}
