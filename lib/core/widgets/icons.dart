import 'package:flutter/material.dart';

import 'package:online/styles/colors.dart';

class IconS extends StatelessWidget {
  const IconS({super.key, required this.icccons, required this.ontap});
  final VoidCallback icccons;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.facebook,
          size: 40,
          color: textWhite,
        ),
        onPressed: () {
          print('facebook');
        },
      ),
      IconButton(
        icon: Icon(
          Icons.tiktok,
          size: 40,
          color: textWhite,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.wechat,
          size: 40,
          color: textWhite,
        ),
        onPressed: () {},
      ),
    ]);
  }
}
