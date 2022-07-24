import 'package:beginning_app/modules/signup/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  bool coAnimation = false;
  bool isLoaded = false;

  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 10),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => SignupScreen()));
          //isLoaded=true;
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animation.json',
            width: 120.0,
            height: 170.0,
            controller: _animationController, onLoaded: (comp) {
          _animationController.duration = comp.duration;
          _animationController.forward();
        }),
      ),
    );
  }
}
