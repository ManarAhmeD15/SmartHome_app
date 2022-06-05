import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beginning_app/modules/password/forgot_password.dart';
import 'package:beginning_app/modules/login/loginscreen.dart';

import '../../models/signup_user_model.dart';
import '../home/home_screen.dart';
class SignupScreen extends StatefulWidget {

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey=GlobalKey<FormState>();
  bool isPassword=true;

  bool isClicked = false;
  late FirebaseAuth mAuth;

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

                  child: Image(image: AssetImage('assets/smart-home(2).png'),
                    width: 50.0,
                    height: 50.0,),
                ),

                SizedBox(
                  height: 20.0,
                ),


                Text(
                  'Create a new account',
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
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
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
                                  return 'email must not be empty';
                                }
                                else
                                  return null;

                              },
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                prefixIcon: Icon(
                                  Icons.email,
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
                                labelText: 'Password',
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
                                if(formKey.currentState!.validate())
                                  {
                                setState(() {
                                isClicked = true;
                                });
                                FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text)
                                    .then((value)
                                async {
                                print(value.user?.email);
                                print(value.user?.uid);

                                userCreate( name: usernameController.text,
                                email: emailController.text,
                                password: passwordController.text,
                                uId: value.user!.uid,
                                );
                                print(value.user?.emailVerified);
                                if (value.user?.emailVerified == false){
                                User? user = FirebaseAuth.instance.currentUser;
                                await FirebaseAuth.instance.setLanguageCode("fr");
                                await user?.sendEmailVerification();
                                }

                                })
                                    .catchError((error) {
                                print(error.toString());
                                });
                                }

                                },
                                child:
                                Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(hexColor("#264653")),
                                  ),
                                ),

                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'You have an account?',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              TextButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                  );
                                },
                                child:Text
                                  (
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.amber,
                                  ),
                                )
                                , ),
                            ],
                          ),
                          SizedBox(
                            height: 110.0,
                          )
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
  void userCreate({
    required String name,
    required String email,
    required String password,
    required String uId,
  })
  {
    SignUpUserModel model = SignUpUserModel(
      email: email,
      name: name,
      password: password,
      uId: uId,
    );
    FirebaseFirestore.instance.
    collection('users')
        .doc(uId)
        .set(model.toMap())
        .then((value){
    })

        .catchError((error){});



}
