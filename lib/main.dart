import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/navigation/navigation_provider.dart';
import 'modules/signup/signupscreen.dart';

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
      home: SignupScreen(),
    ),
  );
}

