import 'package:beginning_app/modules/all%20rooms/bedroom/bedroom.dart';
import 'package:beginning_app/modules/all%20rooms/kitchen/fire.dart';
import 'package:beginning_app/modules/all%20rooms/kitchen/smoke.dart';
import 'package:beginning_app/modules/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/all rooms/kitchen/kitchen.dart';
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
          home: bedroom(),
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
