import 'package:beginning_app/modules/all%20rooms/bedroom/all_rooms_screen.dart';
import 'package:beginning_app/modules/all%20rooms/kitchen/add_new_device_kitchen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class KitchenScreen extends StatefulWidget {
  const KitchenScreen({Key? key}) : super(key: key);

  @override
  State<KitchenScreen> createState() => _KitchenScreenState();
}

class _KitchenScreenState extends State<KitchenScreen> {
  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
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
                    width: 240.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(300),
                        bottomRight: Radius.circular(300),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 290.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllRooms()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 35.0,
                        color: Color(hexColor("#264653")),
                      ),
                    ),
                  ),
                  //  Padding(
                  //    padding: const EdgeInsetsDirectional.only(top: 50.0,),
                  //    child:
                  Text(
                    'Kitchen',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  //),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
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
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
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
                                  builder: (context) => AddNewKitchen()),
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
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title:
                                        //Center(
                                        //child:
                                        Text(
                                      'Water leak value',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    //),
                                    content: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 10.0),
                                      child: CircularPercentIndicator(
                                        radius: 50.0,
                                        lineWidth: 10.0,
                                        backgroundColor: Colors.grey,
                                        percent: 0.70,
                                        progressColor: Colors.lightBlueAccent,
                                        animation: true,
                                        animationDuration: 1500,
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                        // header: Text('Water leak value',
                                        //   maxLines: 1,
                                        //   style: TextStyle(
                                        //     fontWeight: FontWeight.bold,
                                        //     // color:  Color(hexColor("#264653")),
                                        //     fontSize: 15.0,
                                        //   ),
                                        // ),

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
                                                    "70%",
                                                    //maxLines: 1,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(
                                                          hexColor("#264653")),
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
                                                        'assets/leak.png'),
                                                    width: 24.0,
                                                    height: 24.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // actions: [
                                    //   Center(
                                    //     child: FloatingActionButton(
                                    //       backgroundColor: Colors.amber,
                                    //       onPressed: (){},
                                    //       child: Icon(
                                    //         Icons.add,
                                    //         size: 30.0,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ],
                                  ),
                                );
                              },
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage('assets/leak.png'),
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
                        'Water leak',
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
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title:
                                        //Center(
                                        //child:
                                        Text(
                                      'Smoke detector value',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    //),
                                    content: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 10.0),
                                      child: CircularPercentIndicator(
                                        radius: 50.0,
                                        lineWidth: 10.0,
                                        backgroundColor: Colors.grey,
                                        percent: 0.66,
                                        progressColor: Color(
                                          hexColor("#264653"),
                                        ),
                                        animation: true,
                                        animationDuration: 1500,
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                        // header: Text('Water leak value',
                                        //   maxLines: 1,
                                        //   style: TextStyle(
                                        //     fontWeight: FontWeight.bold,
                                        //     // color:  Color(hexColor("#264653")),
                                        //     fontSize: 15.0,
                                        //   ),
                                        // ),

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
                                                    "66%",
                                                    //maxLines: 1,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(
                                                          hexColor("#264653")),
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
                                                start: 2.0,
                                              ),
                                              child: Stack(
                                                children: [
                                                  Image(
                                                    image: AssetImage(
                                                        'assets/smoke.png'),
                                                    width: 24.0,
                                                    height: 24.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // actions: [
                                    //   Center(
                                    //     child: FloatingActionButton(
                                    //       backgroundColor: Colors.amber,
                                    //       onPressed: (){},
                                    //       child: Icon(
                                    //         Icons.add,
                                    //         size: 30.0,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ],
                                  ),
                                );
                              },
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage('assets/smoke.png'),
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
                        'Smoke detector',
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
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title:
                                        //Center(
                                        //child:
                                        Text(
                                      'Fire detector value',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    //),
                                    content: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 10.0),
                                      child: CircularPercentIndicator(
                                        radius: 50.0,
                                        lineWidth: 10.0,
                                        backgroundColor: Colors.grey,
                                        percent: 0.50,
                                        progressColor: Color(
                                          hexColor("#264653"),
                                        ),
                                        animation: true,
                                        animationDuration: 1500,
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                        // header: Text('Water leak value',
                                        //   maxLines: 1,
                                        //   style: TextStyle(
                                        //     fontWeight: FontWeight.bold,
                                        //     // color:  Color(hexColor("#264653")),
                                        //     fontSize: 15.0,
                                        //   ),
                                        // ),

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
                                                    "50%",
                                                    //maxLines: 1,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(
                                                          hexColor("#264653")),
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
                                                start: 2.0,
                                              ),
                                              child: Stack(
                                                children: [
                                                  Image(
                                                    image: AssetImage(
                                                        'assets/fire.png'),
                                                    width: 24.0,
                                                    height: 24.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // actions: [
                                    //   Center(
                                    //     child: FloatingActionButton(
                                    //       backgroundColor: Colors.amber,
                                    //       onPressed: (){},
                                    //       child: Icon(
                                    //         Icons.add,
                                    //         size: 30.0,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ],
                                  ),
                                );
                              },
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage('assets/fire.png'),
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
                      Column(
                        children: [
                          Text(
                            'Fire detector',
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(hexColor("#264653")),
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Stack(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 350,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                        ),
                      ),
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
                                                borderRadius:
                                                    BorderRadius.circular(
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
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Image(
                                                          image: AssetImage(
                                                              'assets/cooker.png'),
                                                          width: 20.0,
                                                          height: 25.0,
                                                        ),
                                                      ),
                                                      width: 80.0,
                                                      height: 80.0,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        color:
                                                            Colors.purple[50],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 5.0,
                                                    ),
                                                    Text(
                                                      'Cooker',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15.0,
                                                        color: Color(hexColor(
                                                            "#264653")),
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Off',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 10.0,
                                                            color: Color(
                                                                hexColor(
                                                                    "#264653")),
                                                          ),
                                                        ),
                                                        Switch(
                                                          value: switch1,
                                                          onChanged:
                                                              onChangedFunction3,
                                                          activeColor: Colors
                                                              .purple[300],
                                                          activeTrackColor:
                                                              Colors
                                                                  .purple[100],
                                                        ),
                                                        Text(
                                                          'On',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 10.0,
                                                            color: Color(
                                                                hexColor(
                                                                    "#264653")),
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
                                                borderRadius:
                                                    BorderRadius.circular(
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
                                                            const EdgeInsets
                                                                .all(8.0),
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
                                                            BorderRadius
                                                                .circular(10.0),
                                                        color:
                                                            Colors.orange[100],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 5.0,
                                                    ),
                                                    Text(
                                                      'Lamp',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15.0,
                                                        color: Color(hexColor(
                                                            "#264653")),
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Off',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 10.0,
                                                            color: Color(
                                                                hexColor(
                                                                    "#264653")),
                                                          ),
                                                        ),
                                                        Switch(
                                                          value: switch2,
                                                          onChanged:
                                                              onChangedFunction4,
                                                          activeColor: Colors
                                                              .orange[500],
                                                          activeTrackColor:
                                                              Colors
                                                                  .orange[200],
                                                        ),
                                                        Text(
                                                          'On',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 10.0,
                                                            color: Color(
                                                                hexColor(
                                                                    "#264653")),
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
                                                borderRadius:
                                                    BorderRadius.circular(
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
                                                            const EdgeInsets
                                                                .all(8.0),
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
                                                            BorderRadius
                                                                .circular(10.0),
                                                        color: Colors
                                                            .deepOrange[100],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 5.0,
                                                    ),
                                                    Text(
                                                      'Fridge',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15.0,
                                                        color: Color(hexColor(
                                                            "#264653")),
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Off',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 10.0,
                                                            color: Color(
                                                                hexColor(
                                                                    "#264653")),
                                                          ),
                                                        ),
                                                        Switch(
                                                          value: switch3,
                                                          onChanged:
                                                              onChangedFunction5,
                                                          activeColor: Colors
                                                              .deepOrange[700],
                                                          activeTrackColor:
                                                              Colors.deepOrange[
                                                                  200],
                                                        ),
                                                        Text(
                                                          'On',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 10.0,
                                                            color: Color(
                                                                hexColor(
                                                                    "#264653")),
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
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  15.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 20.0,
                                            left: 20.0,
                                            child: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 13.0),
                                                        child: Image(
                                                          image: AssetImage(
                                                              'assets/washing.png'),
                                                          width: 15.0,
                                                          height: 15.0,
                                                        ),
                                                      ),
                                                      width: 80.0,
                                                      height: 80.0,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        color: Colors.cyan[100],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 5.0,
                                                    ),
                                                    Text(
                                                      'Washing Machine',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15.0,
                                                        color: Color(hexColor(
                                                            "#264653")),
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Off',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 10.0,
                                                            color: Color(
                                                                hexColor(
                                                                    "#264653")),
                                                          ),
                                                        ),
                                                        Switch(
                                                          value: switch4,
                                                          onChanged:
                                                              onChangedFunction6,
                                                          activeColor:
                                                              Colors.cyan[500],
                                                          activeTrackColor:
                                                              Colors.cyan[200],
                                                        ),
                                                        Text(
                                                          'On',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 10.0,
                                                            color: Color(
                                                                hexColor(
                                                                    "#264653")),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
