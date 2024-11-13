import 'package:flutter/material.dart';

class Signupwidget  extends StatelessWidget {
   Signupwidget({super.key,required this.control,required this.lab,required this.valid });
 TextEditingController control;
 final String? Function(String?)? valid;
 String lab;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: control,
      validator: valid,
      decoration: InputDecoration(
        label: Text(lab),
        border: OutlineInputBorder(),
      ),
    );
  }
}
