import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/pages/login.dart';
import 'package:shop_app/provider/loey_proviredd.dart';

class Signup extends StatelessWidget {
 var name=TextEditingController();
 var phone=TextEditingController();
 var email=TextEditingController();
 var password=TextEditingController();
  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var p=Provider.of<loey_provider1>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("خش يا باشا"),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
          child: Container(
            color: Colors.black,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 500,
                  child: TextFormField(
                    validator: (loey){
                      if(loey==null || loey.isEmpty)
                        {
                          return "اسمك مش موجود معانا يا حب ";
                        }
                    },
                    controller: name,
                    decoration: InputDecoration(
                      label: Text("اسمك"),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 500,
                  child: TextFormField(
                    validator: (yossey){
                      if(yossey==null || yossey.isEmpty)
                      {
                        return "رقمك مش موجود معانا يا قلبي";
                      }
                      else if(yossey.length <11)
                        {
                          return "يا ابني يا حبيبي الزم رقمك يكون 11 رقم";
                        }
                    },
                    controller: phone,
                    decoration: InputDecoration(
                        label: Text("رقمك"),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 500,
                  child: TextFormField(
                    validator: (adham){
                      if(adham==null || adham.isEmpty)
                      {
                        return "ايميلك مش موجود معانا يسطا ";
                      }
                    },
                    controller: email,
                    decoration: InputDecoration(
                        label: Text("ايميلك"),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 500,
                  child: TextFormField(
                    validator: (lo2){
                      if(lo2==null || lo2.isEmpty)
                      {
                        return "your باسورد";
                      }
                    },
                    controller: password,
                    decoration: InputDecoration(
                        label: Text("اوعا تعرف حد بس هات الباسورد بتاعك"),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(250, 50)
                  ),
                    onPressed: (){
                   if(formkey.currentState!.validate()){
                     p.signup(name.text, phone.text, email.text, password.text);
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                   }

                }, child: Text("خش هتجيبك ",style: TextStyle(color: Colors.white),)),
                SizedBox(height: 5,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                }, child: Text("لو عندك اكونت خش علي طول من هنا يا قلبي",style: TextStyle(color: Colors.blue,fontSize: 25),))
              ],
            ),
          )
      )
    );
  }
}
