import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bedroom.dart';

class AddNewDevice extends StatefulWidget {
  @override
  State<AddNewDevice> createState() => _AddNewDeviceState();
}

class _AddNewDeviceState extends State<AddNewDevice> {
  late int selectValue;
  String? value;

  var DeviceController = TextEditingController();

  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  final refreneceData = FirebaseDatabase.instance.reference();

  var uId;
  setData() async {
    var user = await FirebaseAuth.instance.currentUser;
    var gett = await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .update({
      "user_device": DeviceController.text,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectValue = 0;
  }

  setSelectedValue(int val) {
    setState(() {
      selectValue = val;
    });
  }

  final items = ['1', '2', '3', '4'];

  DropdownMenuItem<String> buildMenu(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10.0,
          color: Colors.white,
        ),
      ));
  @override
  Widget build(BuildContext context) {
    //final ref = refreneceData.reference();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          Navigator.push(
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
                      'Add New Device',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 27.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Choose device',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Color(hexColor("#264653")),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              RadioListTile<int>(
                  value: 1,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
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
                  }),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 50.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 300,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black,
                                width: 0.7,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Select the type',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                    color: Color(hexColor("#264653")),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 50.0,
                                    height: 30.0,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                      vertical: 4.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(hexColor("#264653")),
                                      borderRadius: BorderRadius.circular(
                                        20.0,
                                      ),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        iconSize: 20.0,
                                        iconEnabledColor: Colors.white,
                                        dropdownColor:
                                            Color(hexColor("#264653")),
                                        value: value,
                                        items: items.map(buildMenu).toList(),
                                        onChanged: (value) => setState(
                                          () => this.value = value!,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 37.0,
                          left: 12.0,
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Choose devices',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                top: 40.0,
                              ),
                              child: RadioListTile<int>(
                                  value: 10,
                                  groupValue: selectValue,
                                  title: Row(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                            image:
                                                AssetImage('assets/lamp.png'),
                                            width: 20.0,
                                            height: 20.0,
                                          ),
                                        ),
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15.0,
                                          ),
                                          color: Colors.black12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        'Fan',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(hexColor("#264653")),
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  activeColor: Color(hexColor("#264653")),
                                  selected: true,
                                  onChanged: (val) {
                                    setSelectedValue(val!);
                                  }),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                top: 72.0,
                              ),
                              child: RadioListTile<int>(
                                  value: 11,
                                  groupValue: selectValue,
                                  title: Row(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                            image:
                                                AssetImage('assets/fridge.png'),
                                            width: 20.0,
                                            height: 20.0,
                                          ),
                                        ),
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15.0,
                                          ),
                                          color: Colors.black12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        'Fridge',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(hexColor("#264653")),
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  activeColor: Color(hexColor("#264653")),
                                  selected: true,
                                  onChanged: (val) {
                                    setSelectedValue(val!);
                                  }),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                top: 40.0,
                                start: 140.0,
                              ),
                              child: RadioListTile<int>(
                                  value: 12,
                                  groupValue: selectValue,
                                  title: Row(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage('assets/fan.png'),
                                            width: 20.0,
                                            height: 20.0,
                                          ),
                                        ),
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            14.0,
                                          ),
                                          color: Colors.black12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        'Fan',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(hexColor("#264653")),
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  activeColor: Color(hexColor("#264653")),
                                  selected: true,
                                  onChanged: (val) {
                                    setSelectedValue(val!);
                                  }),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                top: 72.0,
                                start: 140.0,
                              ),
                              child: RadioListTile<int>(
                                  value: 13,
                                  groupValue: selectValue,
                                  title: Row(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                            image: AssetImage('assets/tv.png'),
                                            width: 20.0,
                                            height: 20.0,
                                          ),
                                        ),
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15.0,
                                          ),
                                          color: Colors.black12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        'Computer',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(hexColor("#264653")),
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  activeColor: Color(hexColor("#264653")),
                                  selected: true,
                                  onChanged: (val) {
                                    setSelectedValue(val!);
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              /*  RadioListTile<int>(
                  value: 2,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/motion.png'),
                            width: 20.0,
                            height: 20.0,
                          ),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Motion',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(hexColor("#264653")),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }),
              RadioListTile<int>(
                  value: 3,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/alarm.png'),
                            width: 20.0,
                            height: 20.0,
                          ),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Alarm clock',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(hexColor("#264653")),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }),   */ //alarm & motion
              RadioListTile<int>(
                  value: 4,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/fire.png'),
                            width: 20.0,
                            height: 20.0,
                          ),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Fire detector',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(hexColor("#264653")),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }),
              RadioListTile<int>(
                  value: 5,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/smoke.png'),
                            width: 20.0,
                            height: 20.0,
                          ),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Smoke detector',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(hexColor("#264653")),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }),
              /*   RadioListTile<int>(
                  value: 6,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/magnetic.png'),
                            width: 20.0,
                            height: 20.0,
                          ),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Door & Window Magnetic',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(hexColor("#264653")),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }),
              RadioListTile<int>(
                  value: 7,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/humidity.png'),
                            width: 20.0,
                            height: 20.0,
                          ),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Temperature and humidity',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(hexColor("#264653")),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }),   */ //----> temprature & magnetic
              RadioListTile<int>(
                  value: 8,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/ac.png'),
                            width: 20.0,
                            height: 20.0,
                          ),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Ac control',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(hexColor("#264653")),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }),
              RadioListTile<int>(
                  value: 9,
                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage('assets/leak.png'),
                            width: 20.0,
                            height: 20.0,
                          ),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          color: Colors.black12,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Water leak',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(hexColor("#264653")),
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  activeColor: Color(hexColor("#264653")),
                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 140.0,
                  vertical: 10.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                  ),
                  width: 120.0,
                  height: 40.0,
                  child: MaterialButton(
                    onPressed: () async {
                      await refreneceData.child('input').set({
                        '1': 'string',
                        '2': 12,
                        '3': 'okkkk',
                      });
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
