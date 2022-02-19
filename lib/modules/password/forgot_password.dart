import 'package:beginning_app/modules/signup/signupscreen.dart';
import 'package:beginning_app/modules/login/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgetPassword extends StatefulWidget {

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var newpasswordController = TextEditingController();
  var formKey=GlobalKey<FormState>();
  bool isPassword=true;
  bool isnewPassword=true;

  hexColor (String colorhexcode){
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black54,
      // ),
      body:  SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,

              children:
              [
                Padding(
                  padding: const EdgeInsetsDirectional.only(top:30.0),

                  child: Image(image: AssetImage('assets/home-automation(1).png'),
                    width: 50.0,
                    height: 50.0,),
                ),

                SizedBox(
                  height: 20.0,
                ),


                Text(
                  'Please, generate a new password!',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(hexColor("#264653")),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top:20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                      color: Color(hexColor("#264653")),
                    ),
                    width: double.infinity,


                    child: Form(                      // validate
                      key: formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30.0,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.only(top:50.0),
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                controller: usernameController,
                                keyboardType: TextInputType.name,
                                onFieldSubmitted: ( value)
                                {
                                  print(value);
                                },
                                onChanged: (value)
                                {
                                  print(value);
                                },
                                // validation
                                validator:(value)
                                {
                                  if(value!.isEmpty)
                                  {
                                    return 'user name must not be empty';
                                  }
                                  else
                                    return null;

                                },
                                decoration: InputDecoration(
                                  labelText: 'User name',
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 3, color: Colors.blue),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder : OutlineInputBorder(
                                    borderSide: const BorderSide(width: 3, color: Colors.white),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30.0,
                            ),
                            child: TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              controller: passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText:isPassword,
                              onFieldSubmitted: ( value)
                              {
                                print(value);

                              },
                              onChanged: (value)
                              {
                                print(value);
                              },

                              // validation

                              validator:(value)
                              {
                                if(value!.isEmpty)
                                {
                                  return 'password is too short!';
                                }
                                else
                                  return null;

                              },
                              decoration: InputDecoration(
                                labelText: 'New password',
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),

                                // obscure

                                suffixIcon: IconButton(
                                  icon: Icon(
                                    isPassword ? Icons.visibility : Icons.visibility_off,
                                    color: Colors.white,
                                  ),
                                  onPressed: ()
                                  {
                                    setState(() {
                                      isPassword = !isPassword;

                                    });
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder : OutlineInputBorder(
                                  borderSide: const BorderSide(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),

                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30.0,
                            ),
                            child: TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              controller: newpasswordController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText:isnewPassword,
                              onFieldSubmitted: ( value)
                              {
                                print(value);

                              },
                              onChanged: (value)
                              {
                                print(value);
                              },

                              // validation

                              validator:(value)
                              {
                                if(value!.isEmpty)
                                {
                                  return 'password is too short!';
                                }
                                else
                                  return null;

                              },
                              decoration: InputDecoration(
                                labelText: 'Repeat new password',
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),

                                // obscure

                                suffixIcon: IconButton(
                                  icon: Icon(
                                    isnewPassword ? Icons.visibility : Icons.visibility_off,
                                    color: Colors.white,
                                  ),
                                  onPressed: ()
                                  {
                                    setState(() {
                                      isnewPassword = !isnewPassword;

                                    });
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder : OutlineInputBorder(
                                  borderSide: const BorderSide(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),

                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 100.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 50.0,
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: MaterialButton(
                                onPressed:()
                                {
                                  if(formKey.currentState!.validate()) {
                                    print(usernameController.text);
                                    print(passwordController.text);
                                    print(newpasswordController.text);
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  LoginScreen()),
                                  );
                                },
                                child:
                                Text(
                                  'Submit',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(hexColor("#264653")),
                                  ),
                                ),

                              ),
                            ),
                          ),
                          SizedBox(
                            height: 210.0,
                          ),


                        ],
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
