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
              padding: const EdgeInsets.symmetric(vertical:20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:80.0,),
                    child: Text(
                      'Welcome home,',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:80.0,),
                    child: Text(
                      'User name',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Center(
                    child: Image(image: AssetImage('assets/home-automation(1).png'),
                      width: 70.0,
                      height: 70.0,),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:80.0,),
                        child: Text(
                          'Rooms',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 30.0,),
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                      fontSize: 7.0,
                                      color: Colors.grey,),
                                  ),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Icon(
                                    Icons.edit,
                                    color: Colors.grey,
                                    size:7.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 120.0,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Rooms(),
                            separatorBuilder: (context, index) => SizedBox(
                              width: 20,
                            ),
                            itemCount: 7,
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






Widget Rooms() => Container(
  width: 100.0,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      10.0,
    ),
    color: Colors.grey[300],
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0,),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: Container(
                width: 40.0,
                height: 70.0,
                child: Image(
                  image: AssetImage('assets/home-automation(1).png'),
                  width: 70.0,
                  height: 70.0,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 7.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Bedroom',
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                maxLines: 2,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 7.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '2 Devices',
                style: TextStyle(
                  fontSize: 8.0,
                  color: Colors.black54,
                ),
                maxLines: 2,
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
