import 'package:flutter/material.dart';

class Productdet extends StatelessWidget {
  var image;
  var title;
  var des;
  Productdet({required this.image,required this.des,required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    color: Colors.black,
              width:300,
                height: 300,
                child:   Image.network(image),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(width:300,child: Text(title,style: TextStyle(color: Colors.white),)),
                  ),
                  Container(width:300,child: Text(des,style: TextStyle(color: Colors.white),)),
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
