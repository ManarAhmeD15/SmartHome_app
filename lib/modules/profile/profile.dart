import 'package:beginning_app/modules/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {


  hexColor (String colorhexcode){
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }
  const profile({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: ListView(
              children: [
                Row(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          end: 270.0
                      ),
                      child:IconButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const HomeScreen()),);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 35.0,
                          color: Colors.blueGrey[800]),
                        ),

                    ),
                  ],
                ),

                SizedBox(
                  height: 90.0,

                ),

                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 6,
                                color: Theme.of(context).scaffoldBackgroundColor
                            ),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Color(hexColor("#264653")),

                              ),
                            ],

                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://format-com-cld-res.cloudinary.com/image/private/s--mxuhe-u0--/c_limit,g_center,h_65535,w_550/fl_keep_iptc.progressive,q_95/v1/a4b01333d99cff410d363cd2ca226e4c/CHRISTINA-CONSTANCE-VICTORIA-EDIT-1web.jpg"
                                )
                            )
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,

                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 3,
                                    color: Theme.of(context).scaffoldBackgroundColor

                                ),
                                color: Colors.amber
                            ),
                            child: IconButton(
                              icon:
                              Icon(
                                Icons.edit ,
                                color: Colors.white,
                              size: 25,),
                              onPressed:()
                              {


                              },
                              ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,

                ),
                TextFormField(
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                  ),
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: ( String value){
                    print(value);
                  },
                  onChanged: (String value){

                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.amber,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.blueGrey,),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder : OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                ),
                SizedBox(
                  height: 20.0,

                ),

                TextFormField(
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: ( String value){
                    print(value);
                  },
                  onChanged: (String value){

                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.amber,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color:Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder : OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                ),
                SizedBox(
                  height: 20.0,

                ),

                TextFormField(
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                  ),
                  keyboardType: TextInputType.number,
                  onFieldSubmitted: ( String value){
                    print(value);
                  },
                  onChanged: (String value){

                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    labelStyle: TextStyle(
                      color: Colors.amber,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder : OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                ),

                SizedBox(
                  height: 20.0,

                ),


                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50.0,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[700],
                      borderRadius: BorderRadius.circular(25.0,),
                    ),
                    child: MaterialButton(
                      onPressed:(){},
                      child: Text(
                        'Edit',
                        style: TextStyle(
                          fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),







              ],
            ),
          ),
        ),
      ),
    );
  }
}