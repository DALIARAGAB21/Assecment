import 'package:flutter/material.dart';

import '../models/Signupmodel.dart';
import '../serviecs/serviecslogin.dart';

class Loginprovider extends ChangeNotifier{
  SignupModels?sing;

  Future<void>fectlogin(String email,String password)async{
    sing=(await Loginserviecs.login(Email: email, pass: password)) as SignupModels?;
    notifyListeners();
  }
}