import 'package:beginning_app/modules/all%20rooms/bedroom/bedroom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Magentic extends StatefulWidget {
  const Magentic({Key? key}) : super(key: key);
  @override
  State<Magentic> createState() => _MagenticState();
}

class _MagenticState extends State<Magentic> {
  int selected1 = 0;
  int selected2 = 0;
  @override
  /*
  bool val1 = false;
  bool val2 = false;

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
  */

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
                      end: 290.0,
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
                    'Door & window',
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
              height: 5.0,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 225,
                            height: 200,
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
                          left: 30.0,
                          child: Stack(
                            children: [
                              Text(
                                'Door',
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(hexColor("#264653")),
                                  fontSize: 14.0,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Row(
                                      children: [
                                        Radio<int>(
                                            value: 1,
                                            groupValue: selected1,
                                            activeColor: Colors.orange,
                                            onChanged: (T) {
                                              print(T);
                                              setState(() {
                                                selected1 = T!;
                                              });
                                            }),
                                        Text(
                                          'Open',
                                          style: TextStyle(fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Row(
                                    children: [
                                      Radio<int>(
                                          value: 2,
                                          groupValue: selected1,
                                          activeColor: Colors.orange,
                                          onChanged: (T) {
                                            print(T);
                                            setState(() {
                                              selected1 = T!;
                                            });
                                          }),
                                      Text(
                                        'Close',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 40.0,
                                        top: 10.0,
                                      ),
                                      child: Image(
                                        image: AssetImage('assets/door.png'),
                                        width: 150.0,
                                        height: 150.0,
                                      ),
                                    ),
                                  ],
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
                  height: 5.0,
                ),
                Stack(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 225,
                            height: 200,
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
                          left: 30.0,
                          child: Stack(
                            children: [
                              Text(
                                'Window',
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(hexColor("#264653")),
                                  fontSize: 14.0,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30.0),
                                    child: Row(
                                      children: [
                                        Radio<int>(
                                            value: 3,
                                            groupValue: selected2,
                                            activeColor: Colors.orange,
                                            onChanged: (T) {
                                              print(T);
                                              setState(() {
                                                selected2 = T!;
                                              });
                                            }),
                                        Text(
                                          'Open',
                                          style: TextStyle(fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Row(
                                    children: [
                                      Radio<int>(
                                          value: 4,
                                          groupValue: selected2,
                                          activeColor: Colors.orange,
                                          onChanged: (T) {
                                            print(T);
                                            setState(() {
                                              selected2 = T!;
                                            });
                                          }),
                                      Text(
                                        'Close',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 34.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 53.0,
                                        top: 18.0,
                                      ),
                                      child: Image(
                                        image: AssetImage('assets/windows.png'),
                                        width: 120.0,
                                        height: 120.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

hexColor(String colorhexcode) {
  String colornew = '0xff' + colorhexcode;
  colornew = colornew.replaceAll('#', '');
  int colorint = int.parse(colornew);
  return colorint;
}
