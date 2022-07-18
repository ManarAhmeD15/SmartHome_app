import 'dart:async';

import 'package:beginning_app/modules/all%20rooms/kitchen/kitchen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_loader_type.dart';
import 'package:getwidget/types/gf_progress_type.dart';


class Water extends StatefulWidget {
  const Water({Key? key}) : super(key: key);

  @override
  State<Water> createState() => _WaterState();
}

class _WaterState extends State<Water> {
  @override
  late final FirebaseApp app;
  final referenceData = FirebaseDatabase.instance.reference();
  StreamController<dynamic> streamController = StreamController();

  Future showtemp() async {
    final result = await referenceData
        .child('Water')
        .once()
        .then((DatabaseEvent databaseEvent) {
      streamController.add(databaseEvent.snapshot.value);
      // .add(snapshot.value);
    });
    return result;
  }

  void initState() {
    streamController = StreamController();
    Timer.periodic(Duration(seconds: 1), (_) => showtemp());
    super.initState();
  }

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
                      end: 300.0,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => KitchenScreen()),
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
                    'Water Leak',
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
            Stack(
              children: [
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
                      top: 40.0,
                      left: 120.0,
                      child: Stack(
                        children: [
                          Text(
                            'Water Leak value',
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
                      top: 290.0,
                      left: 160.0,
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage('assets/leak.png'),
                            width: 50.0,
                            height: 50.0,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 200.0,
                      child: Stack(
                        children: [
                          StreamBuilder(
                              stream: streamController.stream,
                              builder: (BuildContext context,
                                  AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  double tTemp;
                                  double t = 0.1;
                                  tTemp = double.parse('${snapshot.data}');
                                  if (tTemp <= 10.01) {
                                    t = 0.1;
                                  } else if (tTemp <= 25.01 && tTemp > 10.01) {
                                    t = 0.2;
                                  } else if (tTemp <= 27.01 && tTemp > 25.01) {
                                    t = 0.2;
                                  } else if (tTemp <= 35 && tTemp > 27.01) {
                                    t = 0.3;
                                  } else if (tTemp <= 45 && tTemp > 35) {
                                    t = 0.4;
                                  } else if (tTemp <= 55 && tTemp > 45) {
                                    t = 0.5;
                                  }

                                   else if (tTemp <= 66) {
                                     t = 0.6;
                                   } else if (tTemp <= 77) {
                                     t = 0.7;
                                   } else if (tTemp <= 88.01) {
                                     t = 0.8;
                                   } else if (tTemp <= 90.01) {
                                     t = 0.9;
                                   } else if (tTemp <= 110) {
                                     t = 0.99;
                                   } else if (tTemp >= 110) {
                                     t = 0.99;
                                     tTemp = 110;
                                   }


                                  return Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 0),
                                      child: GFProgressBar(
                                        leading: Text(
                                          'Water',
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Color(hexColor("#264653")),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        progressBarColor: Colors.blue,
                                        backgroundColor: Colors.blueGrey,
                                        width: 10, //width of the Progress bar
                                        mask:
                                        MaskFilter.blur(BlurStyle.solid, 3),
                                        radius: 250, //حجم الدائرة
                                        animateFromLastPercentage: true,
                                        circleWidth: 12.0,
                                        autoLive: true,
                                        animation: true,
                                        percentage: t, //كام في المية  %%%
                                        trailing: Text('$tTemp C',
                                            style: TextStyle(
                                                color:
                                                Colors.orangeAccent,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                        type: GFProgressType.circular,
                                        circleStartAngle: 0.0, //بداية الملئ
                                        progressHeadType:
                                        GFProgressHeadType.circular,
                                      ),
                                    ),
                                  ]);
                                } else {
                                  return Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 0),
                                      child: GFProgressBar(
                                        leading: Text(
                                          'Water',
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Color(hexColor("#264653")),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        progressBarColor: Colors.red,
                                        backgroundColor: Colors.blueGrey,
                                        width: 10, //width of the Progress bar
                                        mask: MaskFilter.blur(
                                            BlurStyle.solid, 3), //شادو للملئ
                                        radius: 250, //حجم الدائرة
                                        animateFromLastPercentage: true,
                                        circleWidth: 8.0,
                                        autoLive: true,
                                        animation: true,
                                        percentage: .1, //كام في المية  %%%
                                        trailing: GFLoader(
                                          loaderstrokeWidth:
                                          5.0, //حجم الدوران في  الاندرويد
                                          duration: Duration(
                                              milliseconds:
                                              1000), //سرعة التحميل
                                          size: GFSize
                                              .LARGE, //حجم في circle.ios .android. square
                                          type: GFLoaderType.android,
                                        ),
                                        type: GFProgressType.circular,
                                        circleStartAngle: 0.0, //بداية الملئ
                                        progressHeadType:
                                        GFProgressHeadType.circular,
                                      ),
                                    ),
                                  ]);
                                }
                              }),
                        ],
                      ),
                    ),

                    // Positioned(
                    //   bottom: 50.0,
                    //   right: 80.0,
                    //   child: Stack(
                    //     children: [
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(
                    //           horizontal: 140.0,
                    //           vertical: 10.0,
                    //         ),
                    //         child: Container(
                    //           decoration: BoxDecoration(
                    //             color: Colors.amber,
                    //             borderRadius: BorderRadius.circular(
                    //               25.0,
                    //             ),
                    //           ),
                    //           width: 120.0,
                    //           height: 40.0,
                    //           child: MaterialButton(
                    //             onPressed: () async {
                    //               await referenceData
                    //                   .child('Temperature')
                    //                   .child('Write')
                    //                   .set({
                    //                 'Temp': '70',
                    //               });
                    //             },
                    //             child: Text(
                    //               'Write',
                    //               style: TextStyle(
                    //                 fontWeight: FontWeight.w600,
                    //                 color: Colors.white,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Positioned(
                    //   bottom: 50.0,
                    //   left: 80.0,
                    //   child: Stack(
                    //     children: [
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(
                    //           horizontal: 140.0,
                    //           vertical: 10.0,
                    //         ),
                    //         child: Container(
                    //           decoration: BoxDecoration(
                    //             color: Colors.amber,
                    //             borderRadius: BorderRadius.circular(
                    //               25.0,
                    //             ),
                    //           ),
                    //           width: 120.0,
                    //           height: 40.0,
                    //           child: MaterialButton(
                    //             onPressed: ()  {},
                    //             child: Text(
                    //               'Read',
                    //               style: TextStyle(
                    //                 fontWeight: FontWeight.w600,
                    //                 color: Colors.white,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

      // Stack(
      //   children: [
      //     Image.asset(
      //       'assets/hot.png',
      //       filterQuality: FilterQuality.high,
      //       fit: BoxFit.cover,
      //       height: MediaQuery.of(context).size.height,
      //       width: MediaQuery.of(context).size.width,
      //     ),
      //     ListView(
      //       children: [
      //         SizedBox(
      //           height: 100,
      //         ),
      //         Column(
      //           children: [
      //             StreamBuilder(
      //                 stream: streamController.stream,
      //                 builder: (BuildContext context, AsyncSnapshot snapshot) {
      //                   if (snapshot.hasData) {
      //                     dynamic t_temp = 23;
      //                     double t = 0.1;
      //                     t_temp = snapshot.data;
      //
      //                     if (t_temp <= 10.01) {
      //                       t = 0.1;
      //                     } else if (t_temp <= 25.01) {
      //                       t = 0.2;
      //                     } else if (t_temp <= 27.01) {
      //                       t = 0.2;
      //                     } else if (t_temp <= 35) {
      //                       t = 0.3;
      //                     } else if (t_temp <= 45) {
      //                       t = 0.4;
      //                     } else if (t_temp <= 55) {
      //                       t = 0.5;
      //                     } else if (t_temp <= 66) {
      //                       t = 0.6;
      //                     } else if (t_temp <= 77) {
      //                       t = 0.7;
      //                     } else if (t_temp <= 88.01) {
      //                       t = 0.8;
      //                     } else if (t_temp <= 90.01) {
      //                       t = 0.9;
      //                     } else if (t_temp <= 110) {
      //                       t = 0.99;
      //                     } else if (t_temp >= 110) {
      //                       t = 0.99;
      //                       t_temp = 110;
      //                     }
      //                     return Column(children: [
      //                       Padding(
      //                         padding: const EdgeInsets.only(left: 0, top: 0),
      //                         child: GFProgressBar(
      //                           leading: Text(
      //                             'Temp',
      //                             style: TextStyle(
      //                               fontSize: 25,
      //                               color: Color(0xFFFBE200),
      //                               fontWeight: FontWeight.bold,
      //                             ),
      //                           ),
      //                           progressBarColor: Color(0xFFFAF600),
      //                           backgroundColor: Color(0xFFFDFDFD),
      //                           width: 10, //width of the Progress bar
      //                           mask: MaskFilter.blur(
      //                               BlurStyle.solid, 3), //شادو للملئ
      //                           radius: 170, //حجم الدائرة
      //                           animateFromLastPercentage: true,
      //                           circleWidth: 6.0,
      //                           autoLive: true,
      //                           animation: true,
      //                           percentage: t, //كام في المية  %%%
      //                           trailing: Text('${t_temp} C',
      //                               style: TextStyle(
      //                                   color: Color(0xFFF0EBEA),
      //                                   fontSize: 25,
      //                                   fontWeight: FontWeight.bold)),
      //                           type: GFProgressType.circular,
      //                           circleStartAngle: 0.0, //بداية الملئ
      //                           progressHeadType: GFProgressHeadType.circular,
      //                         ),
      //                       ),
      //                     ]);
      //                   } else {
      //                     return Column(children: [
      //                       Padding(
      //                         padding: const EdgeInsets.only(left: 0, top: 0),
      //                         child: GFProgressBar(
      //                           leading: Text(
      //                             'Temp',
      //                             style: TextStyle(
      //                               fontSize: 25,
      //                               color: Colors.blueGrey,
      //                               fontWeight: FontWeight.bold,
      //                             ),
      //                           ),
      //                           progressBarColor: Colors.red,
      //                           backgroundColor: Colors.white,
      //                           width: 10, //width of the Progress bar
      //                           mask: MaskFilter.blur(
      //                               BlurStyle.solid, 3), //شادو للملئ
      //                           radius: 170, //حجم الدائرة
      //                           animateFromLastPercentage: true,
      //                           circleWidth: 6.0,
      //                           autoLive: true,
      //                           animation: true,
      //                           percentage: .1, //كام في المية  %%%
      //                           trailing: GFLoader(
      //                             loaderstrokeWidth:
      //                                 5.0, //حجم الدوران في  الاندرويد
      //                             duration: Duration(
      //                                 milliseconds: 1000), //سرعة التحميل
      //                             size: GFSize
      //                                 .LARGE, //حجم في circle.ios .android. square
      //                             type: GFLoaderType.android,
      //                           ),
      //
      //                           type: GFProgressType.circular,
      //                           circleStartAngle: 0.0, //بداية الملئ
      //                           progressHeadType: GFProgressHeadType.circular,
      //                         ),
      //                       ),
      //                     ]);
      //                   }
      //                 })
      //           ],
      //         )
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}

hexColor(String colorhexcode) {
  String colornew = '0xff' + colorhexcode;
  colornew = colornew.replaceAll('#', '');
  int colorint = int.parse(colornew);
  return colorint;
}
