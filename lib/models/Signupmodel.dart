
class SignupModels{
 String name;
 String pass;
 String phone;
 String email;
 SignupModels({required this.name,required this.email,required this.phone,required this.pass});
 factory SignupModels.fromjson(Map<String,dynamic>json)
 {
   return SignupModels(name: json['name'], email: json['email'], phone: json['phone'], pass: json['token']);
 }
}



