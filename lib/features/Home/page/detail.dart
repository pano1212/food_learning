import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:online/features/Home/provider/home_provider.dart';
import 'package:online/route.dart';
import 'package:provider/provider.dart';

class detaill extends StatefulWidget {
  const detaill({super.key});

  @override
  State<detaill> createState() => _detaillState();
}

class _detaillState extends State<detaill> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeProvider>().getDrink();
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    final datafood = ModalRoute.of(context)!.settings.arguments;
    final Jsondata = jsonDecode(datafood.toString());
    // ignore: unused_local_variable, non_constant_identifier_names
    final Listdrink = context.read<HomeProvider>().modelDrink?.dataRes;

    return Scaffold(
      backgroundColor: Color.fromARGB(227, 255, 255, 255),
      appBar: AppBar(),
      body: ListView(children: [
        CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage('${Jsondata['image']}'),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Text('${Jsondata['name_lo']}'),
            Text('${Jsondata['price']}k'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.timer,
                color: Colors.blue,
              ),
              Text('50 min'),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text('4.8'),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.run_circle,
                color: Colors.red,
              ),
              Text('325cal'),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '20kip',
                style: TextStyle(fontSize: 20),
              ),
              // card see lueang
              Row(
                children: [
                  Card(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              count--;
                            });
                          },
                          icon: Text(
                            '-',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          child: Card(
                            color: Color.fromARGB(255, 240, 236, 236),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text('$count')),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              count++;
                            });
                          },
                          icon: Text(
                            '+',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '  ingredienta',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 125,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Listdrink?.length,
                itemBuilder: (BuildContext context, index) => Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 100,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                NetworkImage('${Listdrink?[index].image}'),
                          ),
                          Text(
                            '${Listdrink?[index].nameLo}',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'about',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              Text(
                'ອາຫານຂອງເຮົາເຮັດມາຈາກວັດທູດິບທີ່ ສົດໃຫມ່  ສະອາດ ທີ່ຖືກຄັດສັນມາຢ່າງພິຖີພິຖັນ',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ]),
      floatingActionButton: Container(
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoute.billl,
                arguments: ('$Listdrink[index]'));
          },
          child: Row(children: [
            Icon(
              Icons.shopify,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            Container(
              height: 40,
              width: 40,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Center(child: Text('1')),
              ),
            ),
          ]),
          backgroundColor: Colors.orange,
        ),
      ),
    );
  }
}
