import 'package:flutter/material.dart';


class Productwidget extends StatelessWidget {
   Productwidget({super.key,required this.name,required this.image,required this.price});
 String name;
 String image;
 String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
           Text(name),
          SizedBox(height: 5,),
          Text(price),
          SizedBox(height: 5,),

        InkWell(onTap: (){

        },
            child: Image.network(image)),
        ],
      ),
    );
  }
}
