import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewDevice extends StatefulWidget {



  @override
  State<AddNewDevice> createState() => _AddNewDeviceState();
}

class _AddNewDeviceState extends State<AddNewDevice> {
  late int selectValue;
  hexColor (String colorhexcode){
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectValue=0;
  }

  setSelectedValue(int val)
  {
    setState(() {
      selectValue=val;
    });

  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:
      SafeArea(
        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Padding(
                padding: const EdgeInsetsDirectional.all(25.0),
                child: Center(
                  child: Text(
                    'Add device',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.only(left: 27.0,),
                child: Row(
                  children: [
                    Text(
                      'Choose device',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color:  Color(hexColor("#264653")),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              
              RadioListTile<int>(
                  value: 1 ,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      SizedBox(width: 10.0,),
                      Text(
                        'Switch 1-2-4 Channels',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(hexColor("#264653")),
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }

              ),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 50.0),
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 120,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              RadioListTile<int>(
                  value: 2,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/study.png'),
                            width: 20.0,
                            height: 20.0,),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0,),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        'Motion',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(hexColor("#264653")),
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,

                  onChanged: (val) {
                    setSelectedValue(val!);
                  } ),
              RadioListTile<int>(
                  value: 3 ,
                  groupValue: selectValue,
                  title:Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/dining-room.png'),
                            width: 20.0,
                            height: 20.0,),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0,),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        'Alarm clock',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(hexColor("#264653")),
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }
              ),
              RadioListTile<int>(
                  value: 4 ,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/kitchen.png'),
                            width: 20.0,
                            height: 20.0,),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0,),
                          color: Colors.green[50],
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        'Fire detector',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:  Color(hexColor("#264653")),
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }
              ),
              RadioListTile<int>(
                  value: 5 ,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/kitchen.png'),
                            width: 20.0,
                            height: 20.0,),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0,),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        'Smoke detector',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:Color(hexColor("#264653")),
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }
              ),
              RadioListTile<int>(
                  value: 6 ,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/kids-room.png'),
                            width: 20.0,
                            height: 20.0,),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0,),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        'Door & Window Magnetic',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:  Color(hexColor("#264653")),
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }
              ),
              RadioListTile<int>(
                  value: 7,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/kitchen.png'),
                            width: 20.0,
                            height: 20.0,),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0,),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        'Temperature and humidity',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                         color: Color(hexColor("#264653")),
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }
              ),
              RadioListTile<int>(
                  value: 8 ,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/kitchen.png'),
                            width: 20.0,
                            height: 20.0,),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0,),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        'Ac control',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:  Color(hexColor("#264653")),
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }
              ),
              RadioListTile<int>(
                  value: 9 ,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/kids-room.png'),
                            width: 20.0,
                            height: 20.0,),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0,),
                          color:  Colors.black12,
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        'Water leak',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:  Color(hexColor("#264653")),
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }
              ),

              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 120.0,
                  vertical:20.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25.0,),
                  ),
                  width: 120.0,
                  height: 40.0,

                  child: MaterialButton(
                    onPressed:()
                    {

                    },
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),





    );
  }
}
