import 'dart:convert';

import 'package:beginning_app/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences
{
  static late SharedPreferences _preferences;


  static const keyUser= 'user';
  static const myUser=User
    (
    imapePath:
    'https://format-com-cld-res.cloudinary.com/image/private/s--mxuhe-u0--/c_limit,g_center,h_65535,w_550/fl_keep_iptc.progressive,q_95/v1/a4b01333d99cff410d363cd2ca226e4c/CHRISTINA-CONSTANCE-VICTORIA-EDIT-1web.jpg',
        name: 'Manar Ahmed',
    email: 'mnarahmed945@gmail.com',
    phone: '01121446685',

  );

  static Future init() async =>
      _preferences= await SharedPreferences.getInstance();

  static Future setUser(User user) async{

    final json=jsonEncode(user.toJson());
    await _preferences.setString(keyUser,json);
  }


  static User getUser()
  {
    final json= _preferences.getString(keyUser);
    return json== null ? myUser : User.fromJson(jsonDecode(json));

  }






}