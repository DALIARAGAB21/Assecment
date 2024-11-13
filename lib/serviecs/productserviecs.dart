import 'package:assesmentflutter/models/productmodel.dart';
import 'package:dio/dio.dart';

class Productserviecs{
  static Dio dio=Dio();

  static Future<ProductModel>getall()async{
    Response response=await dio.get("https://student.valuxapps.com/api/home");
    if(response.statusCode==200)
      {
        return ProductModel.fromjson(response.data);
      }else
        {
          throw Exception("error");
        }
  }
}