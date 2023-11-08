import 'package:flutter/cupertino.dart';

class card extends StatelessWidget {
  const card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                'https://2.bp.blogspot.com/-QkY2EDzrXNk/TbHvwu6zb5I/AAAAAAAAAg8/B2BZS-9fbK8/s1600/noodles.JPG'),
          )
        ],
      ),
    );
  }
}
