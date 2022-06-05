import 'package:beginning_app/modules/about/programmer_screen.dart';
import 'package:beginning_app/modules/all%20rooms/bedroom/add_new_device.dart';
import 'package:beginning_app/modules/all%20rooms/bedroom/bedroom.dart';
import 'package:beginning_app/modules/all%20rooms/kitchen/add_new_device_kitchen.dart';
import 'package:beginning_app/modules/all%20rooms/kitchen/kitchen.dart';
import 'package:beginning_app/modules/login/loginscreen.dart';
import 'package:beginning_app/modules/remote_control/remote_screen.dart';
import 'package:beginning_app/modules/signup/signupscreen.dart';
import 'package:flutter/material.dart';
import 'modules/all rooms/bedroom/add_new_room.dart';
import 'modules/all rooms/bedroom/all_rooms_screen.dart';
import 'modules/all rooms/bedroom/motion.dart';
import 'modules/home/home_screen.dart';
import 'modules/password/forgot_password.dart';
import 'modules/profile/profile.dart';
import 'modules/profile/user_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //options: DefaultFirebaseOptions.currentPlatform
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(

     debugShowCheckedModeBanner: false,
     home: SignupScreen(),
   );
  }

}
