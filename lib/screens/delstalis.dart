import 'package:flutter/material.dart';


class Detalies extends StatelessWidget {
   Detalies({super.key,required this.name,required this.desc,required this.imag});

  String name;
  String desc;
  String imag;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image.network(imag),
              Text(name),
              Text(desc),

            ],
          ),
        ),
      ),
    );
  }
}
