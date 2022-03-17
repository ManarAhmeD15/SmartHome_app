import 'package:flutter/material.dart';

class align extends StatelessWidget {
  static String id='LoginScreen';
  const align({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState>  formKey=GlobalKey<FormState>();
    var emailController=TextEditingController();
    var passwordController=TextEditingController();
    var height=MediaQuery.of(context).size.height;
    // var isKeyboard=MediaQuery.of(context).viewInsets.bottom !=0;
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height *.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child:TextFormField(
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                ),
                keyboardType: TextInputType.name,
                onFieldSubmitted: ( value)
                {
                  print(value);
                },
                onChanged: (value)
                {
                  print(value);
                },
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
            SizedBox(
              height: height *.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                ),
                keyboardType: TextInputType.name,
                onFieldSubmitted: ( value)
                {
                  print(value);
                },
                onChanged: (value)
                {
                  print(value);
                },
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
            SizedBox(
              height: height *.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: MaterialButton(
                  onPressed: (){
                    if(formKey.currentState!.validate()){

                    }
                  },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
            )),
            SizedBox(height: height *.05,
            ),
               Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text('Don\'t have an account ?',style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0
                ),),
                const SizedBox(width: 10.0,),
                GestureDetector(
                    onTap: (){
                      print('hello');
                    },
                    child: const Text('Sign in',)
                )


              ],
            )
          ],
        ),
      ) ,
    );
  }
}