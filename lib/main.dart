import 'package:beginning_app/loginscreen.dart';
import 'package:beginning_app/signupscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(

     debugShowCheckedModeBanner: false,
     home: LoginScreen(),
   );
  }

}
