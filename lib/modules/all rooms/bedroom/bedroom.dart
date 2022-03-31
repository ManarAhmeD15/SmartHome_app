import 'package:beginning_app/modules/all%20rooms/bedroom/alarm.dart';
import 'package:beginning_app/modules/all%20rooms/add_new_device.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



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
                      end: 300.0,
                    ),
                    child: IconButton(
                      onPressed: () {},
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
              height: 40.0,
            ),
            Row(
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
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  AddNewDevice()),
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
                  children:[
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
                                  title: Center(
                                    child: Text(
                                      'Motion',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:  Color(hexColor("#264653")),
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  content: Container(
                                    width: 160.0,
                                    height: 220.0,
                                  ),
                                  actions: [
                                    Center(
                                      child: FloatingActionButton(
                                        backgroundColor: Colors.amber,
                                        onPressed: (){},
                                        child: Icon(
                                          Icons.add,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Image(image: AssetImage('assets/motion.png'),
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
                      'Motion',
                      maxLines: 1,
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
                  children:[
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
                                  title: Center(
                                    child: Text(
                                      'Magnetic',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:  Color(hexColor("#264653")),
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  content: Container(
                                    width: 160.0,
                                    height: 220.0,
                                  ),
                                  actions: [
                                    Center(
                                      child: FloatingActionButton(
                                        backgroundColor: Colors.amber,
                                        onPressed: (){},
                                        child: Icon(
                                          Icons.add,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Image(image: AssetImage('assets/magnetic.png'),
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
                      'Magnetic',
                      maxLines: 1,
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
                  children:[
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
                                  title: Center(
                                    child: Text(
                                      'Temperature',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:  Color(hexColor("#264653")),
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  content: Container(
                                    width: 160.0,
                                    height: 220.0,
                                  ),
                                  actions: [
                                    Center(
                                      child: FloatingActionButton(
                                        backgroundColor: Colors.amber,
                                        onPressed: (){},
                                        child: Icon(
                                          Icons.add,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Image(image: AssetImage('assets/humidity.png'),
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
                      'Temperature',
                      maxLines: 1,
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
                  children:[
                    Stack(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          child: TextButton(
                            onPressed: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Alarm()),
                              );
                            },
                            child: Stack(
                              children: [
                                Image(image: AssetImage('assets/alarm.png'),
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
                      'Alarm Clock',
                      maxLines: 1,
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
              ],
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
                          borderRadius: BorderRadius.circular(15.0,),
                        ),
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
