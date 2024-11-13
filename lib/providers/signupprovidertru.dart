import 'package:assesmentflutter/models/loginsignupmodel.dart';
import 'package:assesmentflutter/serviecs/SignupLoginServiecs.dart';
import 'package:flutter/cupertino.dart';

class Signupproviderr extends ChangeNotifier{
  LoginSignupModel?loginSignupModel;

  Future<bool>fecthpostuser(String name,String password,String emaill,String phone)async{
    loginSignupModel=await SignuLoginServies.postuse(name: name, pass: password, emai: emaill, phone: phone);

    if(loginSignupModel?.status==true)
      {
        notifyListeners();
        return true;
      }else
      {
          return false;
      }
  }
}