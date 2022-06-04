import 'package:beginning_app/modules/all%20rooms/kitchen/add_new_device_kitchen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../bedroom/add_new_device.dart';

class KitchenScreen extends StatelessWidget {
  const KitchenScreen({Key? key}) : super(key: key);

  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
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
                      padding: const EdgeInsetsDirectional.only(
                        end: 290.0
                      ),
                       child:IconButton(
                        onPressed: () {},
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
                      padding: const EdgeInsetsDirectional.only(start: 8.0,),
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
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  AddNewKitchen()),
                              );
                            },
                            icon:Icon(
                              Icons.add,
                              size: 30.0,
                              color: Color(hexColor("#264653")),
                            ),),
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color:  Colors.black12,
                          ),
                        ),
                        Text(
                          'Add new device',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:  Color(hexColor("#264653")),
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
                                onPressed: (){
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
                                            color:Colors.amber,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      //),
                                      content:
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                                        child: CircularPercentIndicator(
                                          radius: 50.0,
                                          lineWidth: 10.0,
                                          backgroundColor: Colors.grey,
                                          percent: 0.70,
                                          progressColor: Color(hexColor("#264653"),),
                                          animation: true,
                                          animationDuration: 1500,
                                          circularStrokeCap: CircularStrokeCap.round,
                                          // header: Text('Water leak value',
                                          //   maxLines: 1,
                                          //   style: TextStyle(
                                          //     fontWeight: FontWeight.bold,
                                          //     // color:  Color(hexColor("#264653")),
                                          //     fontSize: 15.0,
                                          //   ),
                                          // ),

                                          center:
                                          Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional.only(
                                                  top: 23.0,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Text("70%",
                                                      //maxLines: 1,
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        color:Color(hexColor("#264653")),
                                                        fontSize: 15.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional.only(start:5.0,),
                                                child: Stack(
                                                  children: [
                                                    Image(image: AssetImage('assets/leak.png'),
                                                      width: 24.0,
                                                      height: 24.0,),
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
                                    Image(image: AssetImage('assets/leak.png'),
                                      width: 30.0,
                                      height: 30.0,),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0,),
                                color:  Colors.black12,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Water leak',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:  Color(hexColor("#264653")),
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
                                onPressed: (){
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
                                          color:Colors.amber,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      //),
                                      content:
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                                        child: CircularPercentIndicator(
                                          radius: 50.0,
                                          lineWidth: 10.0,
                                          backgroundColor: Colors.grey,
                                          percent: 0.66,
                                          progressColor: Color(hexColor("#264653"),),
                                          animation: true,
                                          animationDuration: 1500,
                                          circularStrokeCap: CircularStrokeCap.round,
                                          // header: Text('Water leak value',
                                          //   maxLines: 1,
                                          //   style: TextStyle(
                                          //     fontWeight: FontWeight.bold,
                                          //     // color:  Color(hexColor("#264653")),
                                          //     fontSize: 15.0,
                                          //   ),
                                          // ),

                                          center:
                                          Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional.only(
                                                  top: 23.0,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Text("66%",
                                                      //maxLines: 1,
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        color:Color(hexColor("#264653")),
                                                        fontSize: 15.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional.only(start:2.0,),
                                                child: Stack(
                                                  children: [
                                                    Image(image: AssetImage('assets/smoke.png'),
                                                      width: 24.0,
                                                      height: 24.0,),
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
                                    Image(image: AssetImage('assets/smoke.png'),
                                      width: 30.0,
                                      height: 30.0,),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0,),
                                color:  Colors.black12,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Smoke detector',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:  Color(hexColor("#264653")),
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
                                onPressed: (){
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
                                          color:Colors.amber,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      //),
                                      content:
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                                        child: CircularPercentIndicator(
                                          radius: 50.0,
                                          lineWidth: 10.0,
                                          backgroundColor: Colors.grey,
                                          percent: 0.50,
                                          progressColor: Color(hexColor("#264653"),),
                                          animation: true,
                                          animationDuration: 1500,
                                          circularStrokeCap: CircularStrokeCap.round,
                                          // header: Text('Water leak value',
                                          //   maxLines: 1,
                                          //   style: TextStyle(
                                          //     fontWeight: FontWeight.bold,
                                          //     // color:  Color(hexColor("#264653")),
                                          //     fontSize: 15.0,
                                          //   ),
                                          // ),

                                          center:
                                          Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional.only(
                                                  top: 23.0,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Text("50%",
                                                      //maxLines: 1,
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        color:Color(hexColor("#264653")),
                                                        fontSize: 15.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional.only(start:2.0,),
                                                child: Stack(
                                                  children: [
                                                    Image(image: AssetImage('assets/fire.png'),
                                                      width: 24.0,
                                                      height: 24.0,),
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
                                    Image(image: AssetImage('assets/fire.png'),
                                      width: 30.0,
                                      height: 30.0,),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0,),
                                color:  Colors.black12,
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
                                color:  Color(hexColor("#264653")),
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
                            borderRadius: BorderRadius.circular(20.0,),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 120,
                        top: 30,
                        child: Stack(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Fire detector',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(hexColor("#264653")),
                                    fontSize: 20.0,
                                  ),
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
