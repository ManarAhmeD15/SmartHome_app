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
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 80.0,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0,),
                                    color: Colors.blueAccent,
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
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(start: 130.0,),
                                      child: Icon(
                                          Icons.edit,
                                        size: 15.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Icon(
                                      Icons.delete,
                                      size: 15.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 80.0,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0,),
                              color: Colors.blueAccent,
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(start: 125.0,),
                                child: Icon(
                                  Icons.edit,
                                  size: 15.0,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Icon(
                                Icons.delete,
                                size: 15.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 80.0,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0,),
                              color: Colors.blueAccent,
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
                                padding: const EdgeInsetsDirectional.only(end: 25.0,),
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(start: 143.0,),
                                child: Icon(
                                  Icons.edit,
                                  size: 15.0,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Icon(
                                Icons.delete,
                                size: 15.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 80.0,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0,),
                              color: Colors.blueAccent,
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(start: 100.0,),
                                child: Icon(
                                  Icons.edit,
                                  size: 15.0,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Icon(
                                Icons.delete,
                                size: 15.0,
                              ),
                            ],
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
      ),

    );
  }
}
