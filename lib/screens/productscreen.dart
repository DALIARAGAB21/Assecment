import 'package:assesmentflutter/providers/productprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/productwidget.dart';
import 'delstalis.dart';

class Productscreen extends StatelessWidget {
   Productscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text("Products"),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child) {
          var pro = provider.productModel?.reult;
          if (pro == null) {
            provider.fecthdata();
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: pro.length,
              itemBuilder: (context, index) {
                return
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Detalies(name: pro[index]['name'],desc:pro[index]['description'] ,imag:pro[index]['image'] ,)));
                    },
                    child: Productwidget(
                      image: pro[index]['image'],
                      name: pro[index]['name'],
                      price: pro[index]['price'].toString(),


                                    ),
                  );
              },
            );
          }
        },
      ),
    );
  }
}

