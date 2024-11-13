import 'package:assesmentflutter/providers/Loginpeovidertrue.dart';
import 'package:assesmentflutter/screens/productscreen.dart';
import 'package:assesmentflutter/widget/signupwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Loginnewsecreen extends StatelessWidget {
   Loginnewsecreen({super.key});
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  var  formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
        centerTitle: true,
      ),
      drawer: Drawer(
        
      ),
      body: Consumer<Loginproviderrr>(
        builder: (context, value, child) {
          
          return Container(
            child: Column(
              children: [
                CircleAvatar(maxRadius: 30,child: Image.network("https://th.bing.com/th/id/R.bffdf24256b5b91968d1499fa7e51bc4?rik=ztmaJiYLd0th5g&pid=ImgRaw&r=0")),
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
                   await value.fectloginn(passwordController.text,emailController.text);
                   if(value.loginSignupModel?.status==true)
                     {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Productscreen()));

                     }

                }

              }, child: Text("Log  in"),

            ),
            ]
           ),
          );

        },
      ),
    );
  }
}
