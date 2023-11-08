import 'package:flutter/material.dart';
import 'package:online/styles/colors.dart';
import 'package:online/styles/dimension.dart';
import 'package:provider/provider.dart';

import '../../features/login/provider/login_provider.dart';

class BtnButton extends StatelessWidget {
  const BtnButton({super.key, required this.title, required this.ontap});
  final String title;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    final number = context.watch<loginProvider>();
    return Container(
      child: MaterialButton(
        onPressed: ontap,
        color: greencolor,
        minWidth: MediaQuery.of(context).size.width,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: pa10,
          child: Text(
            title,
            style: TextStyle(
              color: textWhite,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}

class Btnn extends StatelessWidget {
  const Btnn({super.key, required this.title, required this.ontap});
  final String title;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    final number = context.watch<loginProvider>();
    return Container(
      child: MaterialButton(
        onPressed: ontap,
        color: Colors.orange,
        minWidth: MediaQuery.of(context).size.width,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: pa10,
          child: Text(
            title,
            style: TextStyle(
              color: textWhite,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
