import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/pages/productdet.dart';
import 'package:shop_app/provider/loey_provider11.dart';
import '../wigt/componts.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<loey_provider>(context);
    p.fech();
    return Scaffold(
      appBar: AppBar(
        title: Text("الحاجة"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemCount: p.data?.data.length,
          itemBuilder: (context, index) {
          return GestureDetector(child: Item(image: p.data?.data[index]["image"]),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Productdet(image: p.data?.data[index]["image"], des: p.data?.data[index]["name"], title: p.data?.data[index]["description"])));

          },);
        },

        ),


    );
  }
}
