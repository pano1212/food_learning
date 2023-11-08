import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../styles/colors.dart';
import '../../styles/dimension.dart';

class btnList extends StatelessWidget {
  const btnList({super.key, required this.title, required this.ontap});
  final String title;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: ontap,
        color: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: pa10,
          child: Text(
            title,
            style: TextStyle(
              color: textWhite,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
