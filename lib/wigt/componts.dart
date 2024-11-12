import 'package:flutter/material.dart';

class Item extends StatelessWidget {
 var image;
 Item({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          Container(
            width: 300,
            height: 300,
            child: Card(
              color: Colors.red,
              child: Image.network(image)
            ),
          )
        ],
      ),
    );
  }
}
