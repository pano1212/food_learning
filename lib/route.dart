import 'package:flutter/material.dart';
import 'package:online/features/Home/page/Home.dart';
import 'package:online/features/Home/page/bill_order.dart';
import 'package:online/features/Home/page/detail.dart';
import 'package:online/features/Home/page/login_page.dart';

import 'package:online/features/start/pages/start_page.dart';

class AppRoute {
  static const starpage = '/start_page';
  static const loginpage = '/login_page';
  static const home = '/home';
  static const detail = '/detail';
  static const billl = '/bill';

  final route = <String, WidgetBuilder>{
    starpage: (context) => const Startpage(),
    loginpage: (context) => const LoginPage(),
    home: (context) => const Home(),
    detail: (context) => const detaill(),
    billl: (context) => const bill(),
  };
  get getAll => route;
}
