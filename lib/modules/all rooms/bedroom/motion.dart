import 'package:beginning_app/modules/all%20rooms/bedroom/bedroom.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Motion extends StatefulWidget {

  late final FirebaseApp app;


  @override
  State<Motion> createState() => _MotionState();


}

class _MotionState extends State<Motion> {

  final refrenceData = FirebaseDatabase.instance;
  bool status7 = false;

  @override
  bool val2 = false;

  onChangedFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
      if (val2 == true) {
        print('On');
      } else
        print('Off');
    });
  }

  bool val1 = false;

  onChangedFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
      if (val1 == true) {
        print('On');
      } else
        print('Off');
    });
  }

  var val;
  onChangedFunction3(bool newValue3) {
    setState(() {
      val = newValue3;
      if (val == true) {
        print('On');
      } else
        print('Off');
    });
  }

  Widget build(BuildContext context) {

    final ref=refrenceData.reference();
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Container(
          alignment: Alignment.topCenter,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 260.0,
                height: 140.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(300),
                    bottomRight: Radius.circular(300),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  end: 300.0,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => bedroom()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 35.0,
                    color: Colors.blueGrey[800],
                  ),
                ),
              ),
              Text(
                'Motion',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 350,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30.0,
              left: 155.0,
              child: Stack(
                children: [
                  Text(
                    'Motion',
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(hexColor("#264653")),
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 95.0,
              top: 80.0,
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    100.0,
                  ),
                  color: Color(hexColor("#264653")),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: 75.0,
                        top: 50.0,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            child: Image(
                              image: AssetImage('assets/motion.png'),
                              width: 70.0,
                              height: 70.0,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                150.0,
                              ),
                              color: Color(hexColor("#264653")),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 220.0,
              left: 135.0,
              child: Stack(
                children: [
                  Text(
                    'Movement : ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 220.0,
              left: 220.0,
              child: Stack(
                children: [
                  Text(
                    'Yes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
            //Container//
            Positioned(
              bottom: 70.0,
              right: 40.0,
              child: Stack(
                children: [
                  Text(
                    'Device Action',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
            /* Positioned(
              bottom: 25.0,
              right: 35.0,
              child: Stack(
                children: [
                  Row(
                    children: [
                      customSwitch(
                          'ON', val2, onChangedFunction2
                      ),
                    ],
                  ),
                ],
              ),
            ),  */
            Positioned(
              bottom: 40.0,
              right: 67.0,
              child: Stack(
                children: [
                  Row(
                    children: [
                      // Switch(
                      //   value: val1,
                      //   onChanged: onChangedFunction1,
                      //   activeColor: Color(hexColor("#264653")),
                      //   activeTrackColor: Colors.blueGrey,
                      // ),      --
                      FlutterSwitch(
                        height: 20.0,
                        width: 40.0,
                        borderRadius: 20.0,
                        padding: 1.0,
                        activeColor: Colors.blueGrey,
                        inactiveColor: Colors.grey,
                        value: status7,
                        onToggle: (val) async {
                          setState(() {
                            status7 = val;


                            if (val) {
                           // await
                              ref
                                .child('output')
                                .child('state')
                                .set('on')
                                .asStream();
                          } else {
                           // await
                              ref
                                .child('output')
                                .child('state')
                                .set('off')
                                .asStream();
                          }

                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 40.0,
              right: 35.0,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Text(
                        'OFF',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Color(hexColor("#264653")),
                        ),
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                      Text(
                        'ON',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Color(hexColor("#264653")),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Device Action//
            Positioned(
              top: 190.0,
              left: 75.0,
              child: Stack(
                children: [
                  Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 189.0,
              left: 50.0,
              child: Stack(
                children: [
                  Container(
                    width: 12.0,
                    height: 12.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blueGrey[400],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 187.0,
              left: 25.0,
              child: Stack(
                children: [
                  Container(
                    width: 15.0,
                    height: 15.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            //Left Three Circles//
            Positioned(
              top: 190.0,
              right: 70.0,
              child: Stack(
                children: [
                  Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 189.0,
              right: 50.0,
              child: Stack(
                children: [
                  Container(
                    width: 12.0,
                    height: 12.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blueGrey[400],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 187.0,
              right: 25.0,
              child: Stack(
                children: [
                  Container(
                    width: 15.0,
                    height: 15.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            //Right Three Circles//
          ],
        ),
      ]),
    ));
  }
/*
  final ref = refrenceData.ref(
      'https://console.firebase.google.com/project/gradsmarthomeproj/database/gradsmarthomeproj-default-rtdb/data/~2F');

 */
}



Widget customSwitch(String text, bool val, Function onChangedMethod) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 0,
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        ),
        CupertinoSwitch(
            value: val,
            trackColor: Colors.white70,
            activeColor: Colors.blueGrey,
            onChanged: (newValue) {
              onChangedMethod(newValue);
            })
      ],
    ),
  );
}

hexColor(String colorhexcode) {
  String colornew = '0xff' + colorhexcode;
  colornew = colornew.replaceAll('#', '');
  int colorint = int.parse(colornew);
  return colorint;
}
