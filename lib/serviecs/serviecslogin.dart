import 'package:dio/dio.dart';

class Loginserviecs{
  static Dio dio=Dio();

  static Map postt={"email":"","token":""};

static  Future<bool>login({required String Email,required String pass})async{
      postt['email']=Email;
      postt['token']=pass;

      Response response=await dio.post("https://student.valuxapps.com/api/login",data: postt);
      if(response.statusCode==200)
        {
          return true;
        }else
          {
            return false;
          }
  }
}