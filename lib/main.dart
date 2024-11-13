import 'package:assesmentflutter/providers/loginprovider.dart';
import 'package:assesmentflutter/providers/productprovider.dart';
import 'package:assesmentflutter/providers/signupprovider.dart';
import 'package:assesmentflutter/providers/signupprovidertru.dart';
import 'package:assesmentflutter/screens/loginscreens.dart';
import 'package:assesmentflutter/screens/productscreen.dart';
import 'package:assesmentflutter/screens/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
    providers: [
     // ChangeNotifierProvider(create: (Context)=>SignupProvider()),
      ChangeNotifierProvider(create: (context)=>ProductProvider()),
      ChangeNotifierProvider(create: (context)=>Loginprovider()),
      ChangeNotifierProvider(create: (context)=>Signupproviderr())
    ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignupScreennn(),
      ) ,
    );
  }
}
