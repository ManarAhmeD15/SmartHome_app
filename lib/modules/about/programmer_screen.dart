
import 'package:beginning_app/modules/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgrammerScreen extends StatelessWidget{
  const ProgrammerScreen ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
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
                        end: 270.0
                    ),
                    child:IconButton(
                      onPressed: ()
                      {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const HomeScreen()),);


                      },
                      icon: Icon(
                          Icons.arrow_back_ios,
                          size: 35.0,
                          color: Colors.blueGrey[800]),
                    ),
                  ),

                  //  Padding(
                  //    padding: const EdgeInsetsDirectional.only(top: 50.0,),
                  //    child:
                  Text(
                    'About',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 15.0,
            ),


            SingleChildScrollView(
              //scrollDirection: Axis.vertical
              child:
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                child: Column(
                  children:
                  [
                    Padding(
                      padding: const EdgeInsetsDirectional.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: const NetworkImage('https://avatars.githubusercontent.com/u/87869566?v=4'),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Ibrahim Ahmed El-Badwy',
                                  style: TextStyle(
                                    fontSize: 22.0,fontWeight: FontWeight.bold,color:Colors.blueGrey[800],)
                              ),
                              Row(
                                children: [
                                  Text('ha585115@gmail.com',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey,
                                    ),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('[Software]',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.amber,
                                      ),),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 8.0,
                      color: Colors.amber[700],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.all( 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: const NetworkImage('https://avatars.githubusercontent.com/u/73136678?v=4'),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Manar Ahmed Mohamed',
                                  style: TextStyle(
                                    fontSize: 22.0,fontWeight: FontWeight.bold,color:Colors.blueGrey[800],)
                              ),
                              Row(
                                children: [
                                  Text('mnarahmed@gmail.com',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.grey,
                                    ),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('[Software]',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.amber,
                                      ),),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),
                    Divider(
                      height: 8.0,
                      color: Colors.amber[700],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                    Padding(
                      padding: const EdgeInsetsDirectional.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: const NetworkImage('https://t.co/TE5Hk0dRbw'),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Ahmed Medhat Serag',
                                  style: TextStyle(
                                    fontSize: 22.0,fontWeight: FontWeight.bold,color:Colors.blueGrey[800],)
                              ),
                              Row(
                                children: [
                                  Text('aserag764@gmail.com',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.grey,
                                    ),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('[Software]',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.amber,
                                      ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 8.0,
                      color: Colors.amber[700],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: const NetworkImage('https://avatars.githubusercontent.com/u/101874933?v=4'),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Ibrahem Samir (Team leader)',
                                  style: TextStyle(
                                    fontSize: 21.0,fontWeight: FontWeight.bold,color:Colors.blueGrey[800],)
                              ),
                              Row(
                                children: [
                                  Text('eltabakh987@gmail.com',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.grey,
                                    ),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('[Hardware]',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.amber,
                                      ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 8.0,
                      color: Colors.amber[700],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: const NetworkImage('https://avatars.githubusercontent.com/u/101802362?v=4'),
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Asmaa Ahmed Saeed',
                                  style: TextStyle(
                                    fontSize: 22.0,fontWeight: FontWeight.bold,color:Colors.blueGrey[800],)
                              ),
                              Row(
                                children: [
                                  Text('asmaa612ahmed@gmail.com',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey,
                                    ),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6.0),
                                    child: Text('[Hardware]',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.amber,
                                      ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),
                    Divider(
                      height: 8.0,
                      color: Colors.amber[700],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: const NetworkImage('https://avatars.githubusercontent.com/u/61125543?v=4'),
                          ),
                          SizedBox(
                            width: 18.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Hager Mahmoud Maher',
                                  style: TextStyle(
                                    fontSize: 22.0,fontWeight: FontWeight.bold,color:Colors.blueGrey[800],)
                              ),
                              Row(
                                children: [
                                  Text('hagermahmoud2468@gmail.com',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey,
                                    ),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0,top: 4.0),
                                    child: Text('[Hardware]',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.amber,
                                      ),),
                                  ),
                                ],
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

