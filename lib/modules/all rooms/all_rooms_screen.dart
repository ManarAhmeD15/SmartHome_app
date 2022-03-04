import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllRooms extends StatelessWidget {
  const AllRooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 100.0,),
              child: Text(
                  'All Rooms',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[500],
                  ),
                ),
            ),
            SizedBox(height: 20.0,),
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
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(image: AssetImage('assets/bedroom.png'),
                                      width: 40.0,
                                      height: 40.0,),
                                  ),
                                  width: 60.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0,),
                                    color: Colors.red[100],
                                  ),
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
                                    SizedBox(height: 15.0,),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(end: 35.0,),
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
                                        padding: const EdgeInsetsDirectional.only(start: 83.0,),
                                        child:   IconButton(onPressed: (){},
                                          icon: Icon(
                                            Icons.edit,
                                            size: 15.0,
                                            color: Colors.red,
                                          ),),
                                      ),
                                      IconButton(onPressed: (){},
                                        icon: Icon(
                                          Icons.delete,
                                          size: 15.0,
                                          color: Colors.red,
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
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(image: AssetImage('assets/bathroom.png'),
                                width: 40.0,
                                height: 40.0,),
                            ),
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0,),
                              color: Colors.lightGreen[100],
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
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(image: AssetImage('assets/kitchen.png'),
                                width: 40.0,
                                height: 40.0,),
                            ),
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0,),
                              color: Colors.orange[100],
                            ),
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
                              SizedBox(height: 15.0,),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(end: 23.0,),
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
                            padding: const EdgeInsetsDirectional.only(bottom: 10.0,),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(start: 97.0,),
                                  child:   IconButton(onPressed: (){},
                                    icon: Icon(
                                      Icons.edit,
                                      size: 15.0,
                                      color: Colors.orange,
                                    ),),
                                ),
                                IconButton(onPressed: (){},
                                  icon: Icon(
                                    Icons.delete,
                                    size: 15.0,
                                    color: Colors.orange,
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
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(image: AssetImage('assets/living-room.png'),
                                width: 40.0,
                                height: 40.0,),
                            ),
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0,),
                              color: Colors.cyan[50],
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){},
                    icon: Icon(
                      Icons.add,
                    ),),
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
}
