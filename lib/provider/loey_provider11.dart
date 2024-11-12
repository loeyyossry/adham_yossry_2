import 'package:flutter/material.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/serviecs/dataofproducts.dart';
import 'package:shop_app/serviecs/loginserc.dart';

class loey_provider extends ChangeNotifier
{
  data_model? data;
  Future<void> fech()async
  {
    data=await data_serviecs.get();
    notifyListeners();
  }
}