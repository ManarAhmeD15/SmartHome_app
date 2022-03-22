import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
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
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.amberAccent,

                      ),
                      onPressed:(){},
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
                              color: Colors.amber.withOpacity(0.9)

                            )
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
                        child: Icon(Icons.edit ,color: Colors.white,),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,

                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: ( String value){
                    print(value);
                  },
                  onChanged: (String value){

                    print(value);
                  },
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder : OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                ),
                SizedBox(
                  height: 20.0,

                ),

                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: ( String value){
                    print(value);
                  },
                  onChanged: (String value){

                    print(value);
                  },
                  decoration: InputDecoration(
                    hintText: "Email",

                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder : OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                ),
                SizedBox(
                  height: 20.0,

                ),

                TextFormField(
                  keyboardType: TextInputType.number,
                  onFieldSubmitted: ( String value){
                    print(value);
                  },
                  onChanged: (String value){

                    print(value);
                  },
                  decoration: InputDecoration(
                    hintText: "Phone",
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder : OutlineInputBorder(
                      borderSide: const BorderSide(width: 3, color: Colors.amberAccent),
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
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25.0,),
                  ),
                      child: MaterialButton(
                          onPressed:(){},
                        child: Text(
                          'Edit',
                          style: TextStyle(
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
