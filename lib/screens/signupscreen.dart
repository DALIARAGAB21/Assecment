import 'package:assesmentflutter/providers/signupprovider.dart';
import 'package:assesmentflutter/providers/signupprovidertru.dart';
import 'package:assesmentflutter/screens/loginnewscrenn.dart';
import 'package:assesmentflutter/screens/productscreen.dart';
import 'package:assesmentflutter/widget/signupwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupScreennn extends StatelessWidget {
   SignupScreennn({super.key});
   TextEditingController userController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
   TextEditingController emailController = TextEditingController();
   TextEditingController phoneController = TextEditingController();
    var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
        centerTitle: true,

      ),
      body: Consumer<Signupproviderr>(
        builder: (context, provider, child) {
          return Container(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Signupwidget(
                    control: userController,
                    lab: "Enter your name",
                    valid: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a valid name";
                      } else if (value.length < 5) {
                        return "Username must  greater than 5 cha";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 5),
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
                    control: phoneController,
                    lab: "Enter your phone number",
                    valid: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your phone number";
                      } else if (value.length != 11) {
                        return "Phone number must be 11 num";
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
                  ElevatedButton(onPressed: ()async{
                    if(formKey.currentState!.validate())
                      {
                         bool secc=  await provider.fecthpostuser(userController.text, passwordController.text, emailController.text, phoneController.text);
                           if(secc)
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginnewsecreen()));
                            }else
                              {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Field  signup")));

                              }
                      }
                  }, child: Text("Sign up")),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


/*
import 'package:assesmentflutter/providers/signupprovider.dart';
import 'package:assesmentflutter/screens/page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/signupwidget.dart';
import 'loginscreens.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({Key? key}) : super(key: key);

  @override
  _SignupscreenState createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign up"),
        centerTitle: true,
        actions: const [
          Icon(Icons.settings),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text("Menu")),
            ListTile(title: Text("Item 1")),
            ListTile(title: Text("Item 2")),
          ],
        ),
      ),
      body: Consumer<SignupProvider>(
        builder: (context, provider, child) {
          return Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(30),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Signupwidget(
                    control: userController,
                    lab: "Enter your name",
                    valid: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a valid name";
                      } else if (value.length < 5) {
                        return "Username must  greater than 5 cha";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 5),
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
                    control: phoneController,
                    lab: "Enter your phone number",
                    valid: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your phone number";
                      } else if (value.length != 11) {
                        return "Phone number must be 11 num";
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
                        bool success = await provider.fetchUser(user: userController.text, email: emailController.text, pass: passwordController.text, phon: phoneController.text,);
                        if (success) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Signup successful")),
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Signup failed")),
                          );
                        }
                      }
                    }, child: Text("Sign up"),

                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));

                  }, child: Text("you have account")),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
*/