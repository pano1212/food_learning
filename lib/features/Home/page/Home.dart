import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:online/features/Home/provider/home_provider.dart';

import 'package:online/route.dart';
import 'package:provider/provider.dart';

import '../../../core/widgets/btn_list.dart';
import '../../../styles/colors.dart';
import '../../../styles/dimension.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List listfood = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeProvider>().getFood();
  }

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments;
    final listfoood = context.read<HomeProvider>().modelFood?.dataRes;

    return Scaffold(
      backgroundColor: Color.fromARGB(248, 255, 255, 255),
      appBar: AppBar(
        title: Text('$username'),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'F O O D',
                      style: TextStyle(fontSize: 30, color: textblack),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '20-30min',
                          style: TextStyle(
                            fontSize: fontSize12,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '2.4kM',
                          style: TextStyle(
                            fontSize: fontSize12,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Restaurant',
                          style: TextStyle(
                            fontSize: fontSize12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/icons8-pizza-64.png',
                  width: 80,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'so good',
                  style: TextStyle(color: textblack, fontSize: fontSize14),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.yellow,
                    ),
                    Text(
                      '4.7',
                      style: TextStyle(
                          fontSize: fontSize14, fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20, left: 20, top: 10),
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                btnList(
                  title: 'Menu',
                  ontap: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                btnList(
                  title: 'popular',
                  ontap: () {},
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20, left: 20, top: 20),
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: listfoood?.length,
              itemBuilder: (BuildContext context, index) {
                return Card(
                  color: textWhite,
                  elevation: 0,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoute.detail,
                            arguments: jsonEncode(listfoood![index]));
                      },
                      leading: CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            NetworkImage('${listfoood?[index].image}'),
                      ),
                      title: Text('${listfoood?[index].nameLo}'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${listfoood?[index].foodId}'),
                          Text('${listfoood?[index].price}k'),
                        ],
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                        size: 20,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
