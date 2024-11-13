import 'package:assesmentflutter/serviecs/signupserviecs.dart';
import 'package:flutter/cupertino.dart';

import '../models/Signupmodel.dart';

class SignupProvider extends ChangeNotifier {
  SignupModels? signupModels;

  Future fetchUser({required String user, required String pass, required String email, required String phon,}) async {
    try {
      signupModels = (await Signupserviecs.post(user, pass, email, phon)) as SignupModels?;
      notifyListeners();
      return true;
    } catch (ex) {
      print(ex);
      return false;
    }
  }
}

