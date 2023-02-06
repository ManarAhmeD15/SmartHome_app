import 'package:beginning_app/modules/home/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String user_name = 'loading name ........';
  String user_email = 'loading email ........';
  String user_uid = 'loading email ........';

  GetData() async {
    var user = await FirebaseAuth.instance.currentUser;
    var gett = await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get();
    if (this.mounted) {
      setState(() {
        user_name = gett.data()!['name'];
        user_email = gett.data()!['email'];
        user_uid = gett.data()!['uId'];
      });
    }
  }

  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection('users').snapshots();

  @override
  Widget build(BuildContext context) {
    GetData();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
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
                    padding: const EdgeInsetsDirectional.only(end: 290.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 35.0,
                        color: Color(hexColor("#264653")),
                      ),
                    ),
                  ),
                  //  Padding(
                  //    padding: const EdgeInsetsDirectional.only(top: 50.0,),
                  //    child:
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  //),
                ],
              ),
              SizedBox(
                height: 30.0,
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
                              color: Theme.of(context).scaffoldBackgroundColor),
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
                              image: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/553/553416.png"))),
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
                                  color: Theme.of(context)
                                      .scaffoldBackgroundColor),
                              color: Colors.amber),
                          child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 25,
                            ),
                            onPressed: () {},
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 18.0),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.blueGrey[700],
                      ),
                      keyboardType: TextInputType.name,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        labelText: 'User name',
                        labelStyle: TextStyle(
                          color: Colors.amber,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 3,
                            color: Colors.blueGrey,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  // StreamBuilder<QuerySnapshot>(
                  //     stream: users,
                  //     builder: (
                  //       BuildContext context,
                  //       AsyncSnapshot<QuerySnapshot> snapshot,
                  //     ) {
                  //       if (snapshot.hasError) {
                  //         return Text('Something went wrong');
                  //       }
                  //       if (snapshot.connectionState ==
                  //           ConnectionState.waiting) {
                  //         return Text('Loading');
                  //       }
                  //
                  //       final data = snapshot.requireData;
                  //
                  //       return ListView.builder(
                  //           itemCount : data.size,
                  //           itemBuilder: (context, index){
                  //             return Text ('My name is ${data.docs[index]['name']}');
                  //           }
                  //       );
                  //     }),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 18.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.amber,
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 18.0),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                  ),
                  keyboardType: TextInputType.number,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    labelStyle: TextStyle(
                      color: Colors.amber,
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 10.0,
                ),
                child: Container(
                  width: 180.0,
                  decoration: BoxDecoration(
                    color: Color(hexColor("#264653")),
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
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
    );
  }

  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }
}
