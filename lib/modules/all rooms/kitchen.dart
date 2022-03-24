import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                            onPressed: (){},
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
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(image: AssetImage('assets/leak.png'),
                              width: 40.0,
                              height: 40.0,),
                          ),
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color:  Colors.black12,
                          ),
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
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(image: AssetImage('assets/smoke.png'),
                              width: 40.0,
                              height: 40.0,),
                          ),
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color:  Colors.black12,
                          ),
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
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(image: AssetImage('assets/fire.png'),
                              width: 40.0,
                              height: 40.0,),
                          ),
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color:  Colors.black12,
                          ),
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
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: 350,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0,),
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
                                  'Alarm Clock',
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
