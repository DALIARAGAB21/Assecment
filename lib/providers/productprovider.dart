import 'package:assesmentflutter/models/productmodel.dart';
import 'package:assesmentflutter/serviecs/productserviecs.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier{
  ProductModel?productModel;

  Future<void>fecthdata()async{
    productModel=await Productserviecs.getall();
    notifyListeners();
  }
}