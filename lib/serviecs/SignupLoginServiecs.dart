import 'package:assesmentflutter/models/loginsignupmodel.dart';
import 'package:dio/dio.dart';

class SignuLoginServies{
  static Dio dio=Dio();


  static Future<LoginSignupModel>postuse({required String name,required String pass,required String emai,required String phone})async{
    var respose=await dio.post("https://student.valuxapps.com/api/register");
      if(respose.statusCode==200)
      {
        return LoginSignupModel.fromjson(respose.data);
      }else
        {
          throw Exception("ERROR");
        }
  }
}