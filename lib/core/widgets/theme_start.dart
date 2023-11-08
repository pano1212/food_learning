import 'package:flutter/material.dart';
import 'package:online/styles/colors.dart';

class ThemeStart extends StatelessWidget {
  const ThemeStart({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: appBgcolor),
      child: child,
    );
  }
}
