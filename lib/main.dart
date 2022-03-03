import 'package:beginning_app/modules/login/loginscreen.dart';
import 'package:beginning_app/modules/signup/signupscreen.dart';
import 'package:flutter/material.dart';
import 'modules/all rooms/all_rooms_screen.dart';
import 'modules/home/home_screen.dart';
import 'modules/password/forgot_password.dart';
import 'modules/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(

     debugShowCheckedModeBanner: false,
     home: AllRooms(),
   );
  }

}
