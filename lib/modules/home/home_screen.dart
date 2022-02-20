import 'package:beginning_app/modules/navigation/collapsingnavigationdrawer.dart';
//import 'package:beginning_app/modules/navigation/navigationdrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    hexColor (String colorhexcode){
      String colornew = '0xff' + colorhexcode;
      colornew = colornew.replaceAll('#', '');
      int colorint = int.parse(colornew);
      return colorint;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(hexColor("#264653")),
        leading: IconButton(
          icon:
          Icon(Icons.menu,),
        onPressed: ()
        {

        },
        ),
      title: Text(
         'Home',
        style: TextStyle(
         fontSize: 20.0,
       ),
      ),
      ),

      body:
      Stack(
        children: <Widget>
        [

          Container(

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome home,',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'User name',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Center(
                    child: Image(image: AssetImage('assets/home-automation(1).png'),
                      width: 70.0,
                      height: 70.0,),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Rooms',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),


          ),



          CollapsingNavigationDrawer() ,


        ],

      ),
    );
  }
}


Widget Rooms() =>  Container(
  width: 60.0,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 30.0,
            ),
          ),
          CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(
            radius: 7.0,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      SizedBox(
        height:6.0 ,
      ),
      Text(
        'Ibrahim L Badwy',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    ],
  ),
);
