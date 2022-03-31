import 'package:beginning_app/my_flutter_app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RemoteScreen extends StatefulWidget {
  const RemoteScreen({Key? key}) : super(key: key);

  @override
  State<RemoteScreen> createState() => _RemoteScreenState();

}

class _RemoteScreenState extends State<RemoteScreen> {



  String? value;

  final items = ['TV', 'Air conditioning', 'Fan', 'Heater'];

  DropdownMenuItem<String> buildMenu(String item) =>
      DropdownMenuItem(
          value :item,
          child: Text(
            item,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.0,
              color: Colors.white,
            ),
          )
      ) ;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body:
      SafeArea(
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
                       // bottom: 40.0,
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
                        'Remote Control',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 40.0,),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 300.0,
                        height: 330.0,
                        //color: Colors.white,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(20.0,),
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:
                          [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 35.0),
                                  child: Text('Select device',
                                  style: TextStyle(
                                      fontWeight:FontWeight.w900,
                                      fontSize: 18.0,
                                  color: Colors.blueGrey[800]),
                                  ),
                                ),
                                Container(
                                  width: 150.0,
                                  height: 30.0,
                                  padding: EdgeInsets.symmetric(horizontal: 20.0, ),
                                  decoration: BoxDecoration(
                                    color:Colors.amber[400],
                                    borderRadius: BorderRadius.circular(10.0,),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      iconSize: 20.0,
                                      iconEnabledColor: Colors.white,
                                      dropdownColor:Colors.amber,
                                      value: value,
                                      items : items.map(buildMenu).toList(),
                                      onChanged: (value) => setState(() => this.value = value!,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 60.0),
                                  child: Container(
                                    alignment: AlignmentDirectional.topCenter,
                                    width: 35.0,
                                    height: 150.0,
                                    decoration: BoxDecoration(
                                      //color:Colors.blueGrey,
                                      border: Border.all(color: Colors.black,),
                                      borderRadius: BorderRadius.all(Radius.circular(20)),

                                    ),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children:[

                                            Positioned(
                                              top: 2.0,
                                              child: IconButton(onPressed: (){},
                                                  icon: Icon(
                                                    Icons.add,
                                                    size: 30.0,
                                                  ),),
                                            ),
                                            Positioned(
                                              bottom: 10.0,
                                              child: IconButton(onPressed: (){},
                                                icon: Icon(
                                                  Icons.minimize,
                                                  size: 30.0,
                                                ),),
                                            ),
                                          ],
                                        ),
                                    ),
                                ),
                                SizedBox(width: 30.0,),
                                 CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  child: Text(
                                    'OK',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),

                                  ),
                                  ),
                                SizedBox(width: 30.0,),


                                   Container(
                                    alignment: AlignmentDirectional.topCenter,
                                    width: 35.0,
                                    height: 150.0,
                                    decoration: BoxDecoration(
                                      //color:Colors.blueGrey,

                                      border: Border.all(color: Colors.black,),
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children:[

                                        Positioned(
                                          top: 10.0,
                                          bottom: 20.0,
                                          child: IconButton(onPressed: (){},
                                            icon: Icon(MyFlutterApp.up_open,
                                              size: 30.0,
                                            ),),
                                        ),
                                        Positioned(
                                          bottom: 10.0,
                                          child: IconButton(onPressed: (){},
                                            icon: Icon(
                                              MyFlutterApp.down_open,
                                              size: 30.0,
                                            ),),
                                        ),
                                      ],
                                    ),


                                  ),




                              ],
                            ),

                            Container(
                              width: 60.0,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,),
                                borderRadius: BorderRadius.all(Radius.circular(10)),

                              ),
                              child: MaterialButton(onPressed: (){},
                              child: Icon(Icons.power_settings_new,
                              color: Colors.red,),
                              ),
                            ),

                            // Container(
                            //   width: 100.0,
                            //   height: 30.0,
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
          ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Column(
                children:[
                  Container(
                    width: 120.0,
                    child: TextButton(onPressed: (){},
                      child:Text('Next'),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.blueGrey[800]),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
      ),
      //),
    );
  }
}
