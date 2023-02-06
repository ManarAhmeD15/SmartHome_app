import 'package:beginning_app/modules/all%20rooms/bedroom/add_new_room.dart';
import 'package:beginning_app/modules/all%20rooms/bedroom/bedroom.dart';
import 'package:beginning_app/modules/all%20rooms/kitchen/kitchen.dart';
import 'package:beginning_app/modules/home/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CollectionReference users = FirebaseFirestore.instance.collection('users');

class AllRooms extends StatelessWidget {
  const AllRooms({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 20.0,
              ),
              child: Container(
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
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
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
                      'All Rooms',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                height: 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                            image: AssetImage(
                                                'assets/bedroom.png'),
                                            width: 40.0,
                                            height: 40.0,
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
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: [
                              Text(
                                'Bedroom',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  end: 35.0,
                                ),
                                child: Text(
                                  '2 devices',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              bottom: 10.0,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    start: 83.0,
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.edit,
                                      size: 15.0,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete,
                                    size: 15.0,
                                    color: Colors.red,
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
              ),
            ),

            /*
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                height: 90.0,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded (
                            child : Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(image: AssetImage('assets/bathroom.png'),
                                width: 40.0,
                                height: 40.0,),
                            ),
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0,),
                              color: Colors.lightGreen[100],
                            ),
                          ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: [
                              Text(
                                'Bathroom',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15.0,),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(end: 40.0,),
                                child: Text(
                                  '5 devices',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(bottom: 10.0,),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(start: 77.0,),
                                  child:   IconButton(onPressed: (){},
                                    icon: Icon(
                                      Icons.edit,
                                      size: 15.0,
                                      color: Colors.lightGreen,
                                    ),),
                                ),
                                IconButton(onPressed: (){},
                                  icon: Icon(
                                    Icons.delete,
                                    size: 15.0,
                                    color: Colors.lightGreen,
                                  ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Bathroom
            */

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                height: 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                              builder: (context) =>
                                                  KitchenScreen()),
                                        );
                                      },
                                      child: Stack(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                'assets/kitchen.png'),
                                            width: 40.0,
                                            height: 40.0,
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
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: [
                              Text(
                                'Kitchen',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  end: 23.0,
                                ),
                                child: Text(
                                  '0 devices',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              bottom: 10.0,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    start: 97.0,
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.edit,
                                      size: 15.0,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete,
                                    size: 15.0,
                                    color: Colors.orange,
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
              ),
            ),

            /*

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                height: 90.0,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage('assets/living-room.png'),
                                  width: 40.0,
                                  height: 40.0,),
                              ),
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0,),
                                color: Colors.cyan[50],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            children: [
                              Text(
                                'Living Room',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15.0,),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(end: 65.0,),
                                child: Text(
                                  '2 devices',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(bottom: 10.0,),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(start: 62.0,),
                                  child:   IconButton(onPressed: (){},
                                    icon: Icon(
                                      Icons.edit,
                                      size: 15.0,
                                      color: Colors.cyan,
                                    ),),
                                ),
                                IconButton(onPressed: (){},
                                  icon: Icon(
                                    Icons.delete,
                                    size: 15.0,
                                    color: Colors.cyan,
                                  ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Living room

            */
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddNewRoom()),
                    );
                  },
                  icon: Icon(
                    Icons.add,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 15.0,
                  ),
                  child: Text(
                    'Add New Room',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /*
   _singleChoiceDialog(BuildContext context) => showDialog(
       context: context,
       builder: (context)
       {
         final AddNewRoom = Provider.of
       }
   )  */

}

hexColor(String colorhexcode) {
  String colornew = '0xff' + colorhexcode;
  colornew = colornew.replaceAll('#', '');
  int colorint = int.parse(colornew);
  return colorint;
}
