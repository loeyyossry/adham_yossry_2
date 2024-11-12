import 'package:dio/dio.dart';
import 'package:shop_app/models/modelOF_user.dart';

class user_services
{
   static Dio dio=Dio();
   static Future<void> signup(name,phone,email,password)async
   {
   var respons=  await dio.post("https://student.valuxapps.com/api/register",
       data: {
        "name":name,
         "phone":phone,
         "email":email,
         "password":password
       }
     );
     if(respons.statusCode==200)
       {
         print(respons.data);
       }
   }



   static Future<user_model> login(email,password)async
   {
     var respons=  await dio.post("https://student.valuxapps.com/api/login",
         data: {
           "email":email,
           "password":password
         }
     );
     if(respons.statusCode==200)
     {
       print(respons.data);
     }
    return user_model.fromjson(respons.data);
   }
}