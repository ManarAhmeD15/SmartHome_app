class SignUpUserModel{
  late String name;
  late String email;
  late String password;
  late String uId;

  SignUpUserModel({
    required this.email,
  required this.name,
  required this.password,
  required this.uId,
});


  SignUpUserModel.fromJson(Map<String, dynamic> json)
  {
    email = json['email'];
    name = json['name'];
    password = json['password'];
    uId = json['uId'];
  }

  Map<String, dynamic> toMap()
  {
    return {
      'name':name,
      'email':email,
      'password':password,
      'uId':uId,
    };
  }


}





class CachHelper {
  late String key;
  late String value;


  CachHelper({
    required this.key,
    required this.value,
  });
  CachHelper.fromJson(Map<String, dynamic> json)
  {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toMap()
  {
    return {
      'key':key,
      'value':value,
    };
  }
}    