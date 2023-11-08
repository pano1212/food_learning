import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import '../../../route.dart';
import '../../../styles/colors.dart';

class loginProvider extends ChangeNotifier {
  bool statusLogin = false;

  void login(user, pass, context) {
    if (user == 'pano' && pass == '123456') {
      Navigator.pushNamed(context, AppRoute.home, arguments: user);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('successful'),
        ),
      );
    } else {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.rightSlide,
        title: 'ເຂົ້າສູ່ລະບົບບໍ່ສໍາເລັດ',
        desc: 'ກະລຸນາປ້ອນໃໝ່ອີກຄັ້ງ',
        btnOkColor: background,
        btnCancelOnPress: () {},
        btnOkOnPress: () {},
      )..show();
    }
  }
}
