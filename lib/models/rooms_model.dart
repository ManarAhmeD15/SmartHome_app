import 'dart:io';

import 'package:image_picker/image_picker.dart';

class RoomsModel {
  late String name;
  late String roomImage;
  late String uId;
  RoomsModel({
    required this.roomImage,
    required this.name,
    required this.uId,
  });
  RoomsModel.fromJson(Map<String, dynamic> json) {
    roomImage = json['roomImage'];
    name = json['name'];
    uId = json['uId'];
  }
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'roomImage': roomImage,
      'uId': uId,
    };
  }
}

void add_room({
  required String name,
  required String uid,
}) {}

File? profileImage;

var picker = ImagePicker();

Future<void> getProfileImage() async {
  final pickedFile = await picker.getImage(
    source: ImageSource.gallery,
  );
  if (pickedFile != null) {
    profileImage = File(pickedFile.path);
  } else {
    print('No image selected');
  }
}
