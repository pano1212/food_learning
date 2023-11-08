import 'package:flutter/material.dart';
import 'package:online/features/start/pages/start_page.dart';
import 'package:online/muti_provider.dart';
import 'package:online/route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: providerList,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
          fontFamily: 'PB-Warnjai',
          appBarTheme: AppBarTheme(
            color: Colors.transparent,
          )),
      home: const Startpage(),
      routes: AppRoute().getAll,
    );
  }
}
