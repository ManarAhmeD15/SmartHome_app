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
        child: SingleChildScrollView(

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Padding(
                padding: const EdgeInsetsDirectional.all(30.0),
                child: Text(
                  'Choose new room',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),




              RadioListTile<int>(
                  value: 1 ,

                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/living-room.png'),
                            width: 20.0,
                            height: 20.0,),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0,),
                          color: Colors.indigo[50],
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Living room',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  activeColor:Colors.indigo[300],

                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }

              ),

              RadioListTile<int>(
                  value: 2 ,

                  groupValue: selectValue,
                  title: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage('assets/bathroom.png'),
                            width: 20.0,
                            height: 20.0,),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0,),
                          color: Colors.green[100],
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Bathroom',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  activeColor:Colors.green,

                  selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }

              ),

              RadioListTile<int>(
                value: 3 ,

                groupValue: selectValue,
                title: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('assets/gaming.png'),
                          width: 20.0,
                          height: 20.0,),
                      ),
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0,),
                        color: Colors.blue[50],
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(
                        'Gaming room',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                  activeColor:Colors.blue,

                    selected: true,
                  onChanged: (val) {
                    setSelectedValue(val!);
                  }

              ),

              RadioListTile<int>(
                  value: 4,
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
                          color: Colors.red[50],
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Studying room',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  activeColor:Colors.red,
                  //tileColor: Colors.blue,

                  selected: true,

                  onChanged: (val) {
                    setSelectedValue(val!);
                  } ),
              RadioListTile<int>(
                  value: 5 ,
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
                          color: Colors.orange[50],
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Dining room',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  activeColor:Colors.orangeAccent,
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
                          child: Image(image: AssetImage('assets/garage.png'),
                            width: 20.0,
                            height: 20.0,),
                        ),
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0,),
                          color: Colors.blueGrey[100],
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Garage',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  activeColor:Colors.blueGrey[600],
                  selected: true,


                  onChanged: (val) {
                    setSelectedValue(val!);
                  }
              ),
              RadioListTile<int>(
                  value: 7 ,
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
                          color: Colors.purple[50],
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        'Kids room',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  activeColor:Colors.purple,
                  selected: true,


                  onChanged: (val) {
                    setSelectedValue(val!);
                  }
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 13.0,),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(onPressed: ()
                    {

                    },
                      icon: Icon(
                        Icons.add,
                      ),),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        top: 15.0,
                      ),
                      child: Text(
                        'Add other',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 120.0,
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
