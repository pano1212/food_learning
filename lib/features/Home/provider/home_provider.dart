import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:online/core/configs/config.dart';
import 'package:online/features/Home/model/model_drink.dart';
import 'package:online/features/Home/model/model_food.dart';

class HomeProvider extends ChangeNotifier {
  List foodDataFromAPI = [];
  final dio = Dio();

  ModelFood? modelFood;
  drink? modelDrink;

  getFood() async {
    final response = await dio.get('${Config.baseApi}get_foods');
    print('response: $response');
    modelFood = ModelFood.fromJson(response.data);
  }

  getDrink() async {
    final response = await dio.get('${Config.baseApi}get_drinks');
    print('response: $response');
    modelDrink = drink.fromJson(response.data);
  }
}
