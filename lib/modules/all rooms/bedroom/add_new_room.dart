import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../models/rooms_model.dart';
import '../../home/home_screen.dart';

CollectionReference users = FirebaseFirestore.instance.collection('users');

class AddNewRoom extends StatefulWidget {
  @override
  State<AddNewRoom> createState() => _AddNewRoomState();
}

class _AddNewRoomState extends State<AddNewRoom> {
  late int selectValue;

  var RoomNameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectValue = 0;
  }

  setSelectedValue(int val) {
    setState(() {
      selectValue = val;
    });
  }

  setData() async {
    var user = await FirebaseAuth.instance.currentUser;
    var gett = await FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .update({
      "user_room": RoomNameController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        end: 280.0,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 35.0,
                          color: Colors.blueGrey[800],
                        ),
                      ),
                    ),
                    Text(
                      'Choose new room',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
              // RadioListTile<int>(
              //     value: 1,
              //     groupValue: selectValue,
              //     title: Row(
              //       children: [
              //         Container(
              //           child: Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Image(
              //               image: AssetImage('assets/living-room.png'),
              //               width: 20.0,
              //               height: 20.0,
              //             ),
              //           ),
              //           width: 40.0,
              //           height: 40.0,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(
              //               15.0,
              //             ),
              //             color: Colors.indigo[50],
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10.0,
              //         ),
              //         Text(
              //           'Living room',
              //           style: TextStyle(
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //       ],
              //     ),
              //     activeColor: Colors.indigo[300],
              //     selected: true,
              //     onChanged: (val) {
              //       setSelectedValue(val!);
              //     }),
              // RadioListTile<int>(
              //     value: 2,
              //     groupValue: selectValue,
              //     title: Row(
              //       children: [
              //         Container(
              //           child: Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Image(
              //               image: AssetImage('assets/bathroom.png'),
              //               width: 20.0,
              //               height: 20.0,
              //             ),
              //           ),
              //           width: 40.0,
              //           height: 40.0,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(
              //               15.0,
              //             ),
              //             color: Colors.green[100],
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10.0,
              //         ),
              //         Text(
              //           'Bathroom',
              //           style: TextStyle(
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //       ],
              //     ),
              //     activeColor: Colors.green,
              //     selected: true,
              //     onChanged: (val) {
              //       setSelectedValue(val!);
              //     }),
              // RadioListTile<int>(
              //     value: 3,
              //     groupValue: selectValue,
              //     title: Row(
              //       children: [
              //         Container(
              //           child: Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Image(
              //               image: AssetImage('assets/gaming.png'),
              //               width: 20.0,
              //               height: 20.0,
              //             ),
              //           ),
              //           width: 40.0,
              //           height: 40.0,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(
              //               15.0,
              //             ),
              //             color: Colors.blue[50],
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10.0,
              //         ),
              //         Text(
              //           'Gaming room',
              //           style: TextStyle(
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //       ],
              //     ),
              //     activeColor: Colors.blue,
              //     selected: true,
              //     onChanged: (val) {
              //       setSelectedValue(val!);
              //     }),
              // RadioListTile<int>(
              //     value: 4,
              //     groupValue: selectValue,
              //     title: Row(
              //       children: [
              //         Container(
              //           child: Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Image(
              //               image: AssetImage('assets/study.png'),
              //               width: 20.0,
              //               height: 20.0,
              //             ),
              //           ),
              //           width: 40.0,
              //           height: 40.0,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(
              //               15.0,
              //             ),
              //             color: Colors.red[50],
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10.0,
              //         ),
              //         Text(
              //           'Studying room',
              //           style: TextStyle(
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //       ],
              //     ),
              //     activeColor: Colors.red,
              //     //tileColor: Colors.blue,
              //
              //     selected: true,
              //     onChanged: (val) {
              //       setSelectedValue(val!);
              //     }),
              // RadioListTile<int>(
              //     value: 5,
              //     groupValue: selectValue,
              //     title: Row(
              //       children: [
              //         Container(
              //           child: Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Image(
              //               image: AssetImage('assets/dining-room.png'),
              //               width: 20.0,
              //               height: 20.0,
              //             ),
              //           ),
              //           width: 40.0,
              //           height: 40.0,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(
              //               15.0,
              //             ),
              //             color: Colors.orange[50],
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10.0,
              //         ),
              //         Text(
              //           'Dining room',
              //           style: TextStyle(
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //       ],
              //     ),
              //     activeColor: Colors.orangeAccent,
              //     selected: true,
              //     onChanged: (val) {
              //       setSelectedValue(val!);
              //     }),
              // RadioListTile<int>(
              //     value: 6,
              //     groupValue: selectValue,
              //     title: Row(
              //       children: [
              //         Container(
              //           child: Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Image(
              //               image: AssetImage('assets/garage.png'),
              //               width: 20.0,
              //               height: 20.0,
              //             ),
              //           ),
              //           width: 40.0,
              //           height: 40.0,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(
              //               15.0,
              //             ),
              //             color: Colors.blueGrey[100],
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10.0,
              //         ),
              //         Text(
              //           'Garage',
              //           style: TextStyle(
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //       ],
              //     ),
              //     activeColor: Colors.blueGrey[600],
              //     selected: true,
              //     onChanged: (val) {
              //       setSelectedValue(val!);
              //     }),
              // RadioListTile<int>(
              //     value: 7,
              //     groupValue: selectValue,
              //     title: Row(
              //       children: [
              //         Container(
              //           child: Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Image(
              //               image: AssetImage('assets/kids-room.png'),
              //               width: 20.0,
              //               height: 20.0,
              //             ),
              //           ),
              //           width: 40.0,
              //           height: 40.0,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(
              //               15.0,
              //             ),
              //             color: Colors.purple[50],
              //           ),
              //         ),
              //         SizedBox(
              //           width: 10.0,
              //         ),
              //         Text(
              //           'Kids room',
              //           style: TextStyle(
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //       ],
              //     ),
              //     activeColor: Colors.purple,
              //     selected: true,
              //     onChanged: (val) {
              //       setSelectedValue(val!);
              //     }),

              ListView.separated(
                itemBuilder: (context, index) => buildRoomModel(),
                separatorBuilder: (context, index) => Padding(
                  padding: EdgeInsetsDirectional.only(start: 20.0),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey[300],
                  ),
                ),
                itemCount: 7,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 13.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Center(
                              child: Text(
                                'add room',
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            content: Column(
                              children: [
                                Container(
                                  width: 160.0,
                                  height: 220.0,
                                  child: InkWell(
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CircleAvatar(
                                          radius: 65.0,
                                          backgroundColor: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                          child: CircleAvatar(
                                            radius: 60.0,
                                            backgroundImage: RoomImage == null
                                                ? NetworkImage(
                                                    'https://th.bing.com/th/id/OIP.ywlabKJiH0SRNFEmuiAb0QHaEo?pid=ImgDet&rs=1')
                                                : FileImage(RoomImage!)
                                                    as ImageProvider,
                                          ),
                                        ),
                                        Icon(Icons.photo_camera),
                                      ],
                                    ),
                                    onTap: () {
                                      getRoomImage();
                                      // cubit.getDocImage();
                                    },
                                  ),
                                ),
                                TextFormField(
                                  cursorColor: Colors.blueGrey,
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                  ),
                                  controller: RoomNameController,
                                  keyboardType: TextInputType.name,
                                  onFieldSubmitted: (value) {
                                    print(value);
                                  },
                                  onChanged: (value) {
                                    print(value);
                                  },
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Room name must not be empty';
                                    } else
                                      return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Room name',
                                    labelStyle: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.blueGrey,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.blueGrey),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.blueGrey),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              Center(
                                child: TextButton(
                                  onPressed: () {
                                    setData();
                                  },
                                  child: Text(
                                    'Add',
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.add,
                      ),
                    ),
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
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 120.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                  ),
                  width: 120.0,
                  height: 40.0,
                  child: MaterialButton(
                    onPressed: () async {
                      await users.add({
                        'name': 'Living room',
                        'image': Image(
                          image: AssetImage('assets/living-room.png'),
                          width: 20.0,
                          height: 20.0,
                        ),
                      }).then((value) => print('User added'));
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

  Widget buildRoomModel() {
    return RadioListTile<int>(
        value: 1,
        groupValue: selectValue,
        title: Row(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/living-room.png'),
                  width: 20.0,
                  height: 20.0,
                ),
              ),
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
                color: Colors.indigo[50],
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Living room',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        activeColor: Colors.indigo[300],
        selected: true,
        onChanged: (val) {
          setSelectedValue(val!);
        });
  }

  File? RoomImage;
  ImagePicker picker = ImagePicker();
  Future<void> getRoomImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      RoomImage = File(pickedFile.path);
      print('Image picked');
    } else {
      print('No image selected');
    }
  }

  void UploadImage({
    required String name,
    required String uid,
  }) {
    print(RoomImage);
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('rooms/${Uri.file(RoomImage!.path).pathSegments.last}')
        .putFile(RoomImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        RoomCreate(
          roomImage: value,
          name: name,
          uId: uid,
        );
      });
      print(value);
    }).catchError((error) {
      print(error.toString());
    });
  }

  void RoomCreate({
    required String name,
    required String roomImage,
    required String uId,
  }) {
    RoomsModel model = RoomsModel(
      name: name,
      roomImage: roomImage,
      uId: uId,
    );
    FirebaseFirestore.instance
        .collection('rooms')
        .doc(uId)
        .set(model.toMap())
        .then((value) {})
        .catchError((error) {});
  }
}
