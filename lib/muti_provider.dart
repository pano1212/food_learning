import 'package:online/features/Home/provider/home_provider.dart';
import 'package:online/features/login/provider/login_provider.dart';
import 'package:provider/provider.dart';

dynamic providerList = [
  ChangeNotifierProvider(create: (_) => loginProvider()),
  ChangeNotifierProvider(create: (_) => HomeProvider()),
];
