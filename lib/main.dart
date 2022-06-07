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
import 'package:provider/provider.dart';
import 'modules/navigation/navigation_drawer_widget.dart';
import 'modules/navigation/navigation_provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //options: DefaultFirebaseOptions.currentPlatform
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
static final String title = 'Navigation Drawer';

@override
Widget build(BuildContext context) => ChangeNotifierProvider(
  create: (context) => NavigationProvider(),
  child: MaterialApp(
    debugShowCheckedModeBanner: false,
    //title: title,
    //theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: HomeScreen(),

  ),
);
}

/*
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),

    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text(MyApp.title),
      centerTitle: true,
    ),


  );


}


 */