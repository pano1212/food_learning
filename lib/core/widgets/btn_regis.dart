import 'package:flutter/material.dart';
import 'package:online/styles/colors.dart';
import 'package:online/styles/dimension.dart';

class BtnRegis extends StatelessWidget {
  const BtnRegis({super.key, required this.title, required this.ontab});
  final String title;
  final VoidCallback ontab;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: ontab,
        minWidth: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: pa10,
          child: Text(
            title,
            style: TextStyle(color: textWhite, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
