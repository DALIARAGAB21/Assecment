class LoginSignupModel{
  bool status;

  LoginSignupModel({required this.status});

  factory LoginSignupModel.fromjson(Map<String,dynamic>json){
    return LoginSignupModel(status: json['status']);
  }
}