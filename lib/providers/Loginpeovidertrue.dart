import 'package:assesmentflutter/models/loginsignupmodel.dart';
import 'package:assesmentflutter/serviecs/loginserviecsnew.dart';
import 'package:flutter/cupertino.dart';

class Loginproviderrr extends ChangeNotifier{
  LoginSignupModel?loginSignupModel;

  Future<bool>fectloginn(String eamil,String password)async{
    loginSignupModel=await LoginServiecsTrue.postloginn(Email: eamil, Password: password);

    if(loginSignupModel?.status==true)
      {
        return true;

      }else
        {
          return false;
        }
  }
}