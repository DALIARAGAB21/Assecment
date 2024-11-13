class LOginmodel{
  String Email;
  String Password;
  LOginmodel({required this.Email,required this.Password});

  factory LOginmodel.fromjson(Map<String,dynamic>json)
  {
    return LOginmodel(Email: json['email'],Password: json['token']);
  }
}