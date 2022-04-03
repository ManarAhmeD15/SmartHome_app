import 'package:beginning_app/modules/all%20rooms/bedroom/alarm.dart';
import 'package:beginning_app/modules/all%20rooms/add_new_device.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
//import 'package:flutter_switch/flutter_switch.dart';



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

  bool selected=false;
  bool val1 = true;
  bool val2 = true;

  double temp_percent=0.22;
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
                                        color:Color(hexColor("#264653")),
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  content:
                                  Stack(
                                    children: [
                                      Container(
                                        width: 160.0,
                                        height: 220.0,
                                      ),
                                      Positioned(
                                        left: 15.0,
                                        top: 10.0,
                                        child: Container(
                                          width: 200.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100.0,),
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
                                                      child: Image(image: AssetImage('assets/motion.png'),
                                                        width: 70.0,
                                                        height: 70.0,
                                                        color: Colors.white,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(150.0,),
                                                        color: Color(hexColor("#264653")),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Positioned(
                                                top: 120.0,
                                                left: 40.0,
                                                child: Stack(
                                                  children: [
                                                    Text(
                                                      'Movement:',
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
                                                top: 120.0,
                                                left: 120.0,
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
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
                                  title: Row(
                                    children:[ Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Temperature & Humidity',
                                        maxLines: 1,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:  Color(hexColor("#264653")),
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),

                                      Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Switch(

                                            onChanged: (value)
                                            {
                                              setState(() {
                                            selected=value;
                                          });
                                              },
                                            value: selected,
                                          activeColor: Colors.blueGrey[800],
                                          ),

                                        ],
                                      ),
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
                                          child:Container(

                                            child:
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                                              child: CircularPercentIndicator(
                                                radius: 50.0,
                                                lineWidth: 10.0,
                                                backgroundColor: Colors.grey,
                                                percent: temp_percent,
                                                progressColor: Colors.amber,
                                                animation: true,
                                                animationDuration: 1500,
                                                circularStrokeCap: CircularStrokeCap.round,
                                                header: Text('Temperature',
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                   // color:  Color(hexColor("#264653")),
                                                    fontSize: 15.0,
                                                  ),
                                                ),

                                                center:
                                                Stack(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsetsDirectional.only(
                                                        top: 23.0,
                                                      ),
                                                      child: Stack(
                                                        children: [
                                                          Text("22'C",
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
                                                          Image(image: AssetImage('assets/hot.png'),
                                                            width: 20.0,
                                                            height: 20.0,),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),


                                              ),
                                            ),
                                          ),


                                          // FloatingActionButton(
                                          //   backgroundColor: Colors.amber,
                                          //   onPressed: (){},
                                          //   child: Icon(
                                          //     Icons.add,
                                          //     size: 30.0,
                                          //   ),
                                          // ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                                          child: CircularPercentIndicator(
                                            radius: 50.0,
                                            lineWidth: 10.0,
                                            backgroundColor: Colors.grey,
                                            percent: 0.44,
                                            progressColor: Colors.lightBlueAccent,
                                            animation: true,
                                            animationDuration: 1500,
                                            circularStrokeCap: CircularStrokeCap.round,
                                            header: Text('Humidity',
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                //color:  Color(hexColor("#264653")),
                                                fontSize: 15.0,
                                              ),
                                            ),

                                            center:
                                            Stack(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.only(
                                                    top: 23.0,
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Text("40%",
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
                                                      Image(image: AssetImage('assets/humidity2.png'),
                                                        width: 20.0,
                                                        height: 20.0,),
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
                      'Temperature &\nHumidity',
                     // maxLines: 1,

                      overflow: TextOverflow.ellipsis,
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
                        width: 300,
                        height: 350,
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
