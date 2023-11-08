import 'package:flutter/material.dart';
import 'package:online/core/widgets/btn_buton.dart';
import 'package:online/core/widgets/icons.dart';
import 'package:online/core/widgets/theme_start.dart';
import 'package:online/route.dart';
import 'package:online/styles/colors.dart';
import 'package:online/styles/dimension.dart';
import 'package:online/core/widgets/btn_regis.dart';

class Startpage extends StatelessWidget {
  const Startpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeStart(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: pa18,
              child: Text(
                " ສະບາຍດີ",
                style: TextStyle(fontSize: 40, color: textWhite),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: BtnButton(
                title: 'ເຂົ້າສູ່ລະບົບ',
                ontap: () {
                  Navigator.pushNamed(context, AppRoute.loginpage);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: BtnRegis(
                title: "ລົງທະບຽນ",
                ontab: () {},
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "ເຂົ້າສູ່ລະບົບດ້ວຍ",
              style: TextStyle(
                  color: textWhite,
                  fontSize: fontSize12,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20,
            ),
            IconS(
              icccons: () {},
              ontap: () {},
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
