import 'package:beginning_app/modules/all%20rooms/bedroom/alarm.dart';
import 'package:beginning_app/modules/all%20rooms/bedroom/all_rooms_screen.dart';
import 'package:beginning_app/modules/all%20rooms/bedroom/magentic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'add_new_device_bedroom.dart';
import 'motion.dart';
//import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class bedroom extends StatefulWidget {
  const bedroom({Key? key}) : super(key: key);

  @override
  State<bedroom> createState() => _bedroomState();
}

class _bedroomState extends State<bedroom> {
  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  bool selected = true;
  bool val1 = true;
  bool val2 = true;

  double temp_percent = 0.22;
  onChangedFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangedFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
  }

  bool switch1 = false;
  bool switch2 = false;
  bool switch3 = false;
  bool switch4 = false;
  onChangedFunction3(bool newValue3) {
    setState(() {
      switch1 = newValue3;
      if (switch1 == true) {
        print('On');
      } else
        print('Off');
    });
  }

  onChangedFunction4(bool newValue4) {
    setState(() {
      switch2 = newValue4;
      if (switch2 == true) {
        print('On');
      } else
        print('Off');
    });
  }

  onChangedFunction5(bool newValue5) {
    setState(() {
      switch3 = newValue5;
      if (switch3 == true) {
        print('On');
      } else
        print('Off');
    });
  }

  onChangedFunction6(bool newValue6) {
    setState(() {
      switch4 = newValue6;
      if (switch4 == true) {
        print('On');
      } else
        print('Off');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
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
                      end: 280.0,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AllRooms()),
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
                    'Bedroom',
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
              height: 20.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 8.0,
                  ),
                  child: Text(
                    'Devices',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Color(hexColor("#264653")),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Container(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddNewDevice()),
                          );
                        },
                        icon: Icon(
                          Icons.add,
                          size: 30.0,
                          color: Color(hexColor("#264653")),
                        ),
                      ),
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: Colors.black12,
                      ),
                    ),
                    Text(
                      'Add new device',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(hexColor("#264653")),
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Motion()),
                              );
                            },
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage('assets/motion.png'),
                                  width: 30.0,
                                  height: 30.0,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: Colors.black12,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Motion',
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(hexColor("#264653")),
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Magentic()),
                              );
                            },
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage('assets/magnetic.png'),
                                  width: 30.0,
                                  height: 30.0,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: Colors.black12,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Magnetic',
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(hexColor("#264653")),
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            child: TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20.0),
                                          child: Text(
                                            'Temperature & Humidity',
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(hexColor("#264653")),
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ),

                                        // Stack(
                                        //   alignment: Alignment.bottomLeft,
                                        //   children: [
                                        //     // LiteRollingSwitch(
                                        //     //   value: true,
                                        //     //
                                        //     // ),
                                        //
                                        //     Switch(value: selected, onChanged: (bool value){
                                        //       setState(() {
                                        //         selected=value;
                                        //       });
                                        //
                                        //     }),
                                        //   ],
                                        // ),
                                      ],
                                    ),
                                    // content: Container(
                                    //   width: 160.0,
                                    //   height: 220.0,
                                    // ),
                                    actions: [
                                      Row(
                                        children: [
                                          Center(
                                            child: Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0,
                                                        vertical: 10.0),
                                                child: CircularPercentIndicator(
                                                  radius: 50.0,
                                                  lineWidth: 10.0,
                                                  backgroundColor: Colors.grey,
                                                  percent: temp_percent,
                                                  progressColor: Colors.amber,
                                                  animation: true,
                                                  animationDuration: 1500,
                                                  circularStrokeCap:
                                                      CircularStrokeCap.round,
                                                  header: Text(
                                                    'Temperature',
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      // color:  Color(hexColor("#264653")),
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                  center: Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .only(
                                                          top: 23.0,
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            Text(
                                                              "22'C",
                                                              //maxLines: 1,
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color(
                                                                    hexColor(
                                                                        "#264653")),
                                                                fontSize: 15.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .only(
                                                          start: 5.0,
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            Image(
                                                              image: AssetImage(
                                                                  'assets/hot.png'),
                                                              width: 20.0,
                                                              height: 20.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 10.0),
                                            child: CircularPercentIndicator(
                                              radius: 50.0,
                                              lineWidth: 10.0,
                                              backgroundColor: Colors.grey,
                                              percent: 0.44,
                                              progressColor:
                                                  Colors.lightBlueAccent,
                                              animation: true,
                                              animationDuration: 1500,
                                              circularStrokeCap:
                                                  CircularStrokeCap.round,
                                              header: Text(
                                                'Humidity',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  //color:  Color(hexColor("#264653")),
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                              center: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .only(
                                                      top: 23.0,
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        Text(
                                                          "40%",
                                                          //maxLines: 1,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                hexColor(
                                                                    "#264653")),
                                                            fontSize: 15.0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .only(
                                                      start: 5.0,
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        Image(
                                                          image: AssetImage(
                                                              'assets/humidity2.png'),
                                                          width: 20.0,
                                                          height: 20.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage('assets/humidity.png'),
                                    width: 30.0,
                                    height: 30.0,
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: Colors.black12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Temperature &\nHumidity',
                      // maxLines: 1,

                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(hexColor("#264653")),
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Alarm()),
                              );
                            },
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage('assets/alarm.png'),
                                  width: 30.0,
                                  height: 30.0,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: Colors.black12,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Alarm Clock',
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(hexColor("#264653")),
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Stack(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 340,
                        height: 370,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[800],
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.0,
                      top: 10.0,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: 140,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 20.0,
                                    left: 40.0,
                                    child: Stack(
                                      children: [
                                        /*
                                        Text(
                                          'Device 1',
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color:  Color(hexColor("#264653")),
                                            fontSize: 10.0,
                                          ),
                                        ),

                                         */

                                        Column(
                                          children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/tv.png'),
                                                  width: 20.0,
                                                  height: 25.0,
                                                ),
                                              ),
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.lightGreen[100],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text(
                                              'TV',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                                color:
                                                    Color(hexColor("#264653")),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Off',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10.0,
                                                    color: Color(
                                                        hexColor("#264653")),
                                                  ),
                                                ),
                                                Switch(
                                                  value: switch1,
                                                  onChanged: onChangedFunction3,
                                                  activeColor:
                                                      Colors.lightGreen[700],
                                                  activeTrackColor:
                                                      Colors.lightGreen[200],
                                                ),
                                                Text(
                                                  'On',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10.0,
                                                    color: Color(
                                                        hexColor("#264653")),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: 140,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 20.0,
                                    left: 40.0,
                                    child: Stack(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/lamp.png'),
                                                  width: 30.0,
                                                  height: 30.0,
                                                ),
                                              ),
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.orange[100],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text(
                                              'Lamp',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                                color:
                                                    Color(hexColor("#264653")),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Off',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10.0,
                                                    color: Color(
                                                        hexColor("#264653")),
                                                  ),
                                                ),
                                                Switch(
                                                  value: switch2,
                                                  onChanged: onChangedFunction4,
                                                  activeColor:
                                                      Colors.orange[500],
                                                  activeTrackColor:
                                                      Colors.orange[200],
                                                ),
                                                Text(
                                                  'On',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10.0,
                                                    color: Color(
                                                        hexColor("#264653")),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: 140,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 20.0,
                                    left: 40.0,
                                    child: Stack(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/fridge.png'),
                                                  width: 30.0,
                                                  height: 30.0,
                                                ),
                                              ),
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.deepOrange[100],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text(
                                              'Fridge',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                                color:
                                                    Color(hexColor("#264653")),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Off',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10.0,
                                                    color: Color(
                                                        hexColor("#264653")),
                                                  ),
                                                ),
                                                Switch(
                                                  value: switch3,
                                                  onChanged: onChangedFunction5,
                                                  activeColor:
                                                      Colors.deepOrange[700],
                                                  activeTrackColor:
                                                      Colors.deepOrange[200],
                                                ),
                                                Text(
                                                  'On',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10.0,
                                                    color: Color(
                                                        hexColor("#264653")),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      width: 140,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 20.0,
                                    left: 30.0,
                                    child: Stack(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 3.0),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/air-conditioner.png'),
                                                  width: 10.0,
                                                  height: 15.0,
                                                ),
                                              ),
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.purple[50],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text(
                                              'Air Conditioner',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                                color:
                                                    Color(hexColor("#264653")),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Off',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10.0,
                                                    color: Color(
                                                        hexColor("#264653")),
                                                  ),
                                                ),
                                                Switch(
                                                  value: switch4,
                                                  onChanged: onChangedFunction6,
                                                  activeColor:
                                                      Colors.purple[500],
                                                  activeTrackColor:
                                                      Colors.purple[200],
                                                ),
                                                Text(
                                                  'On',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10.0,
                                                    color: Color(
                                                        hexColor("#264653")),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
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
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
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
