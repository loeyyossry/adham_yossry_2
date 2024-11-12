import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/pages/home.dart';
import 'package:shop_app/pages/signup.dart';
import 'package:shop_app/provider/loey_provider11.dart';
import 'package:shop_app/provider/loey_proviredd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[
      ChangeNotifierProvider(
        create: (context) => loey_provider1(),
      ),
      ChangeNotifierProvider(
        create: (context) => loey_provider(),
      )
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Signup(),
      debugShowCheckedModeBanner: false,
    ),);
  }
}
