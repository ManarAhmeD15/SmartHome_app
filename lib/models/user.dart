class User {
  final String imapePath;
  final String name;
  final String email;
  final String phone;


const User ({

  required this.imapePath,
  required this.name,
  required this.email,
  required this.phone,
});

   User copy ({

     String? imapePath,
     String? name,
     String? email,
     String? phone,
  })=>
   User(imapePath: imapePath ?? this.imapePath,
       name: name ?? this.name,
       email: email ?? this.email,
       phone: phone ?? this.phone,

   );

   static User fromJson(
       Map<String,dynamic>json)=>
   User(
     imapePath: json['imapePath'],
     name: json['name'],
     email: json['email'],
     phone: json['phone'],

   );

  Map< String ,dynamic > toJson()=>
      {
  'imapePath': imapePath,
  'name': name,
  'email': email,
  'phone': phone,


      };



}