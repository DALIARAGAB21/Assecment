import 'package:assesmentflutter/models/Signupmodel.dart';
import 'package:dio/dio.dart';

class Signupserviecs{
  static Dio dio=Dio();

  static Map postt={"name":"","phone":"","email":"","token":""};
 static Future<bool>post(String user,String phone,String emaill,String toke)async{
   postt['name']=user;
   postt['phone']=phone;
   postt['email']=emaill;
   postt['token']=toke;
    Response response=await dio.post("https://student.valuxapps.com/api/register",data: postt);

      if(response.statusCode==200)
      {
         return true;
      }else
        {
          return false;
        }

  }
}