class ProductModel {
 List<dynamic>reult;
 ProductModel({required this.reult,});
 factory ProductModel.fromjson(Map<String,dynamic>json)
 {
   return ProductModel(reult: json['data']['products']);
 }
}



