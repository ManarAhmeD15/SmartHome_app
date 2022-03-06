import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewRoom extends StatefulWidget {

  @override
  State<AddNewRoom> createState() => _AddNewRoomState();
}

class _AddNewRoomState extends State<AddNewRoom> {
  late int selectValue;


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
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            // SizedBox(
            //   height: 10.0,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Choose new room',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

            // SizedBox(
            //   height: 25.0,
            // ),



            RadioListTile<int>(
              value: 1 ,

              groupValue: selectValue,
              title: Text('Gaming room'),
                activeColor:Colors.blue,

                secondary:IconButton(onPressed: (){},
                icon: Icon(
                  Icons.videogame_asset_outlined,
                  size: 15.0,
                  color: Colors.black45,
                ),
              ),
                  selected: true,
                onChanged: (val) {
                  setSelectedValue(val!);
                }

            ),

            RadioListTile<int>(
                value: 2,
                groupValue: selectValue,
                title: Text('Reading room'),
                activeColor:Colors.red,
                //tileColor: Colors.blue,
                secondary:IconButton(onPressed: (){},
                  icon: Icon(
                    Icons.videogame_asset_outlined,
                    size: 15.0,
                    color: Colors.black45,
                  ),),
                selected: true,

                onChanged: (val) {
                  setSelectedValue(val!);
                } ),
            RadioListTile<int>(
                value: 3 ,
                groupValue: selectValue,
                title: Text('Dining room'),
                activeColor:Colors.amberAccent,
                selected: true,
                secondary:IconButton(onPressed: (){},
                  icon: Icon(
                    Icons.videogame_asset_outlined,
                    size: 15.0,
                    color: Colors.black45,
                  ),),

                onChanged: (val) {
                  setSelectedValue(val!);
                }
            ),
            RadioListTile<int>(
                value: 4 ,
                groupValue: selectValue,
                title: Text('Garden'),
                activeColor:Colors.green,
                selected: true,
                secondary:IconButton(onPressed: (){},
                  icon: Icon(
                    Icons.videogame_asset_outlined,
                    size: 15.0,
                    color: Colors.black45,
                  ),),

                onChanged: (val) {
                  setSelectedValue(val!);
                }
            ),
            RadioListTile<int>(
                value: 5 ,
                groupValue: selectValue,
                title: Text('Garage'),
                activeColor:Colors.indigo,
                selected: true,
                secondary:IconButton(onPressed: (){},
                  icon: Icon(
                    Icons.videogame_asset_outlined,
                    size: 15.0,
                    color: Colors.black45,
                  ),),

                onChanged: (val) {
                  setSelectedValue(val!);
                }
            ),
            RadioListTile<int>(
                value: 6 ,
                groupValue: selectValue,
                title: Text('Kids room'),
                activeColor:Colors.purple,
                selected: true,
                secondary:IconButton(onPressed: (){},
                  icon: Icon(
                    Icons.videogame_asset_outlined,
                    size: 15.0,
                    color: Colors.black45,
                  ),),

                onChanged: (val) {
                  setSelectedValue(val!);
                }
            ),

    ],
        ),
      ),





   );
  }
}
