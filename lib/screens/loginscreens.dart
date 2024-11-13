
import 'package:assesmentflutter/screens/productscreen.dart';
import 'package:assesmentflutter/screens/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/loginprovider.dart';
import '../providers/signupprovider.dart';
import '../widget/signupwidget.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
   TextEditingController passwordController = TextEditingController();
   TextEditingController emailController = TextEditingController();

   var  formKey = GlobalKey<FormState>();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log in "),
        centerTitle: true,
        actions: const [
          Icon(Icons.settings),
        ],
      ),
      drawer: Drawer(


      ),
      body: Consumer<Loginprovider>(
        builder: (context, provider, child) {
          return Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(30),
            child: Form(
              key:formKey ,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                     CircleAvatar(maxRadius: 100,child: Image.network("https://th.bing.com/th/id/OIP.47XsPr_gcHsj03ogIkVFigHaFJ?rs=1&pid=ImgDetMain",width: 150,height: 200,)),
                  Signupwidget(
                    control: passwordController,
                    lab: "Enter your password",
                    valid: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a valid password";
                      } else if (value.length < 6) {
                        return "Password must be greater than 6 char";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 5),
                  Signupwidget(
                    control: emailController,
                    lab: "Enter your Email",
                    valid: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Productscreen()));

                      }

                    }, child: Text("Log  in"),

                  ),
                  TextButton(onPressed: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupscreen()));
                  }, child: Text("dony have account")),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
