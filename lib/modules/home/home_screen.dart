//import 'package:beginning_app/modules/navigation/navigation_drawer_widgetper(key: key)';

import 'package:beginning_app/modules/all%20rooms/kitchen/kitchen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../all rooms/bedroom/add_new_room.dart';
import '../all rooms/bedroom/bedroom.dart';
import '../navigation/navigation_drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool val1 = true;
  onChangedFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  bool switch8 = false;
  final refrenceData = FirebaseDatabase.instance;

  String user_name = 'loading name ........';
  String user_email = 'loading email ........';
  String user_uid = 'loading email ........';

  GetData() async {
    var user = await FirebaseAuth.instance.currentUser;
    var gett = await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get();
    if (this.mounted) {
      setState(() {
        user_name = gett.data()!['name'];
        user_email = gett.data()!['email'];
        user_uid = gett.data()!['uId'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    hexColor(String colorhexcode) {
      String colornew = '0xff' + colorhexcode;
      colornew = colornew.replaceAll('#', '');
      int colorint = int.parse(colornew);
      return colorint;
    }

    Widget Kitchen() => Container(
          width: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: Colors.grey[100],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KitchenScreen()),
                              );
                            },
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage('assets/kitchen.png'),
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: Colors.orange[100],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Kitchen',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '3 Devices',
                        style: TextStyle(
                          fontSize: 8.0,
                          color: Colors.black54,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
    Widget Bedroom() => Container(
          width: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: Colors.grey[100],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => bedroom()),
                              );
                            },
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage('assets/bedroom.png'),
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: Colors.red[100],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Bedroom',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '4 Devices',
                        style: TextStyle(
                          fontSize: 8.0,
                          color: Colors.black54,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
    Widget LivingRoom() => Container(
          width: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: Colors.grey[100],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          child: TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => KitchenScreen()),
                              // );
                            },
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage('assets/living-room.png'),
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: Colors.indigo[50],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Living Room',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '6 Devices',
                        style: TextStyle(
                          fontSize: 8.0,
                          color: Colors.black54,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
    Widget StudyingRoom() => Container(
          width: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: Colors.grey[100],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          child: TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => KitchenScreen()),
                              // );
                            },
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage('assets/study.png'),
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: Colors.red[50],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Studying Room',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '7 Devices',
                        style: TextStyle(
                          fontSize: 8.0,
                          color: Colors.black54,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
    Widget Bathroom() => Container(
          width: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: Colors.grey[100],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          child: TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => KitchenScreen()),
                              // );
                            },
                            child: Stack(
                              children: [
                                Image(
                                  image: AssetImage('assets/bathroom.png'),
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: Colors.green[100],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Bathroom',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '5 Devices',
                        style: TextStyle(
                          fontSize: 8.0,
                          color: Colors.black54,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );

    GetData();
    final ref = refrenceData.reference();
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Color(hexColor("#264653")),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 100.0,
          ),
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80.0,
                    ),
                    child: Text(
                      'Welcome home,',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80.0,
                    ),
                    child: Text(
                      user_name,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Image(
                      image: AssetImage('assets/smart-home(2).png'),
                      width: 70.0,
                      height: 70.0,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 80.0, right: 130.0),
                        child: Text(
                          'Rooms',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddNewRoom()),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                    size: 10.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 120.0,
                          padding: EdgeInsets.only(
                            left: 80.0,
                          ),
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Row(
                              children: [
                                Bedroom(),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Kitchen(),
                                SizedBox(
                                  width: 10.0,
                                ),
                                LivingRoom(),
                                SizedBox(
                                  width: 10.0,
                                ),
                                StudyingRoom(),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Bathroom(),
                              ],
                            ),
                            separatorBuilder: (context, index) => SizedBox(
                              width: 20,
                            ),
                            itemCount: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 162.0),
                          child: Text(
                            'Devices',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Stack(
                            children: [
                              FlutterSwitch(
                                height: 40.0,
                                width: 80.0,
                                borderRadius: 30.0,
                                padding: 5.0,
                                value: switch8,
                                activeColor: Colors.blueGrey,
                                inactiveColor: Colors.grey,
                                onToggle: (val) async {
                                  setState(() {
                                    switch8 = val;
                                    if (val) {
                                      ref.child('Switch8').set('1').asStream();
                                      ref.child('Switch1').set('1').asStream();
                                      ref.child('Switch2').set('1').asStream();
                                      ref.child('Switch3').set('1').asStream();
                                      ref.child('Switch4').set('1').asStream();
                                      ref.child('Switch5').set('1').asStream();
                                      ref.child('Switch6').set('1').asStream();
                                      ref.child('Switch7').set('1').asStream();
                                      ref.child('Switch9').set('1').asStream();
                                      ref.child('Switch10').set('1').asStream();
                                      ref.child('Switch11').set('1').asStream();
                                    } else {
                                      ref.child('Switch8').set('0').asStream();
                                      ref.child('Switch1').set('0').asStream();
                                      ref.child('Switch2').set('0').asStream();
                                      ref.child('Switch3').set('0').asStream();
                                      ref.child('Switch4').set('0').asStream();
                                      ref.child('Switch5').set('0').asStream();
                                      ref.child('Switch6').set('0').asStream();
                                      ref.child('Switch7').set('0').asStream();
                                      ref.child('Switch9').set('0').asStream();
                                      ref.child('Switch10').set('0').asStream();
                                      ref.child('Switch11').set('0').asStream();
                                    }
                                  });
                                },
                              ),
                              Positioned(
                                top: 10,
                                left: 260,
                                child: Stack(
                                  children: [
                                    Text(
                                      'On',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 100,
                                child: Stack(
                                  children: [
                                    Text(
                                      'Off',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        /*
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80.0,),
                                    child: Container(
                                      height: 125,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0,),
                                        color: Colors.grey,
                                      ),

                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start ,
                                          children:[
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                child: Icon(
                                                  Icons.person,
                                                  color: Colors.white,
                                                ),
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  color: Colors.teal,
                                                  borderRadius: BorderRadius.circular(10.0,),
                                                ),

                                              ),

                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Smoke Detector',
                                                    style: TextStyle(
                                                        fontSize: 10.0,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                    maxLines: 2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            customSwitch(
                                              'On', val1, onChangedFunction1
                                            ),
                                          ]
                                      ),

                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80.0,),
                                    child: Container(
                                      height: 125,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0,),
                                        color: Colors.grey,
                                      ),

                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start ,
                                          children:[
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                child: Icon(
                                                  Icons.person,
                                                  color: Colors.white,
                                                ),
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  color: Colors.teal,
                                                  borderRadius: BorderRadius.circular(10.0,),
                                                ),

                                              ),

                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Smoke Detector',
                                                    style: TextStyle(
                                                      fontSize: 10.0,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                    maxLines: 2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            customSwitch('On', val1, onChangedFunction1),
                                          ]
                                      ),

                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
*/
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  getData() async {
    FirebaseFirestore.instance.collection('users').get().then((value) {
      value.docs.forEach((element) {
        print(element.data());
        print('--------------------------------');
      });
    });
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

// Widget Kitchen() => Container(
//       width: 100.0,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(
//           10.0,
//         ),
//         color: Colors.grey[300],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           vertical: 5.0,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 5.0,
//                   ),
//                   child: Container(
//                     width: 40.0,
//                     height: 70.0,
//                     child: Image(
//                       image: AssetImage('assets/kitchen.png'),
//                       width: 70.0,
//                       height: 70.0,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 7.0,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Bedroom',
//                     style: TextStyle(
//                       fontSize: 10.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                     maxLines: 2,
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 7.0,
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     '2 Devices',
//                     style: TextStyle(
//                       fontSize: 8.0,
//                       color: Colors.black54,
//                     ),
//                     maxLines: 2,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
// Widget LivingRoom() => Container(
//       width: 100.0,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(
//           10.0,
//         ),
//         color: Colors.grey[300],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           vertical: 5.0,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 5.0,
//                   ),
//                   child: Container(
//                     width: 40.0,
//                     height: 70.0,
//                     child: Image(
//                       image: AssetImage('assets/living-room.png'),
//                       width: 70.0,
//                       height: 70.0,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 7.0,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Bedroom',
//                     style: TextStyle(
//                       fontSize: 10.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                     maxLines: 2,
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 7.0,
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     '2 Devices',
//                     style: TextStyle(
//                       fontSize: 8.0,
//                       color: Colors.black54,
//                     ),
//                     maxLines: 2,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
// Widget StudyingRoom() => Container(
//       width: 100.0,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(
//           10.0,
//         ),
//         color: Colors.grey[300],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           vertical: 5.0,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 5.0,
//                   ),
//                   child: Container(
//                     width: 40.0,
//                     height: 70.0,
//                     child: Image(
//                       image: AssetImage('assets/study.png'),
//                       width: 70.0,
//                       height: 70.0,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 7.0,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Bedroom',
//                     style: TextStyle(
//                       fontSize: 10.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                     maxLines: 2,
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 7.0,
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     '2 Devices',
//                     style: TextStyle(
//                       fontSize: 8.0,
//                       color: Colors.black54,
//                     ),
//                     maxLines: 2,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
Widget DiningRoom() => Container(
      width: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5.0,
                  ),
                  child: Container(
                    width: 40.0,
                    height: 70.0,
                    child: Image(
                      image: AssetImage('assets/dining-room.png'),
                      width: 70.0,
                      height: 70.0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 7.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Bedroom',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 7.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2 Devices',
                    style: TextStyle(
                      fontSize: 8.0,
                      color: Colors.black54,
                    ),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
