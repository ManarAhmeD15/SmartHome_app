import 'package:beginning_app/modules/all%20rooms/bedroom/bedroom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class switchdevices extends StatefulWidget {
  const switchdevices({Key? key}) : super(key: key);
  @override
  State<switchdevices> createState() => _switchdevicesState();

}


class _switchdevicesState extends State<switchdevices> {
  @override
  bool val1 = true;
  bool val2 = true;
  onChangedFunction1(bool newValue1){
    setState(() {
      val1 = newValue1;
    });
  }
  onChangedFunction2(bool newValue2){
    setState(() {
      val2 = newValue2;
    });
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
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) =>  bedroom()),
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
                    'Devices switch',
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
            Column(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: 160,
                                height: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0,),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 25.0,
                              left: 35.0,
                              child: Stack(
                                children: [
                                  Text(
                                    'Device 1',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:  Color(hexColor("#264653")),
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),



                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Stack(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: 160,
                                height: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0,),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 25.0,
                              left: 35.0,
                              child: Stack(
                                children: [
                                  Text(
                                    'Device 2',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:  Color(hexColor("#264653")),
                                      fontSize: 10.0,
                                    ),
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
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: 160,
                                height: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0,),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 25.0,
                              left: 35.0,
                              child: Stack(
                                children: [
                                  Text(
                                    'Device 3',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:  Color(hexColor("#264653")),
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),



                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Stack(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: 160,
                                height: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0,),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 25.0,
                              left: 35.0,
                              child: Stack(
                                children: [
                                  Text(
                                    'Device 4',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:  Color(hexColor("#264653")),
                                      fontSize: 10.0,
                                    ),
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




Widget customSwitch(String text, bool val, Function onChangedMethod){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical:0,),
    child: Row(
      children:[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text, style: TextStyle(
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
            onChanged: (newValue)
            {
              onChangedMethod(newValue);
            }
        )
      ],
    ),
  );
}

hexColor(String colorhexcode) {
  String colornew = '0xff' + colorhexcode;
  colornew = colornew.replaceAll('#', '');
  int colorint = int.parse(colornew);
  return colorint;}