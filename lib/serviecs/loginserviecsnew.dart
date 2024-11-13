import 'package:assesmentflutter/models/loginsignupmodel.dart';
import 'package:dio/dio.dart';

class LoginServiecsTrue{
  static Dio dio=Dio();
  
  static Future<LoginSignupModel>postloginn({required String Email,required String Password })async
  {
    var response=await dio.post("https://student.valuxapps.com/api/login");
    if(response.statusCode==200)
      {
        return LoginSignupModel.fromjson(response.data);
      }else
        {
          throw Exception("error");
        }
  }
}