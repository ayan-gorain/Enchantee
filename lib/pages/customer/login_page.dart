
import 'package:enchante/pages/customer/onboarding_page.dart';
import 'package:enchante/pages/vendor/first_page.dart';
import 'package:enchante/utiles/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../deliveryagent/firsst_ppagw.dart';


class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
 final emailCrontroller=new TextEditingController();
 final passwordCrontroller=new TextEditingController();
 final _auth=FirebaseAuth.instance;


  final _formKey=GlobalKey<FormState>();
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,


        body:SizedBox(

          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 200),
                    Text("Login ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            inherit: true,
                            fontSize: 50,
                            color: Colors.black,
                            fontWeight: FontWeight.w800)),
                    SizedBox(height: 5),
                    Text("Login in with your account  ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            inherit: true,
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w200)),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.only(left:30,right: 30,top: 10),
                      child: TextFormField(
                        controller: emailCrontroller,

                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                          prefixIcon : Icon(Icons.person),
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(color: Colors.blue),

                          ),
                          hintText: 'Enter your Email',



                        ),


                        validator: (value){
                          if(value!.isEmpty){
                            return "email cannot be empty";
                          }
                          if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9]").hasMatch(value)){
                            return('Entera  valid email');
                          };
                          return null;

                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:30,right: 30,top: 10),
                      child: TextFormField(
                        controller: passwordCrontroller,
                        obscureText: _isHidden,
                        decoration: InputDecoration(

                          filled: true,
                          fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                          prefixIcon : Icon(Icons.person),
                          labelText: 'Password',
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(color: Colors.blue),

                          ),
                          hintText: 'Enter Password here',
                          suffix: SizedBox(
                            width: 40,
                            child: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off, size: 18,
                              ),
                            ),
                          ),
                        ),

                        validator: (value){
                          if(value!.isEmpty){
                            return "Password cannot be empty";
                          }
                          return null;

                        },

                      ),
                    ),
                    SizedBox(height: 10),
                MaterialButton(
                  minWidth: 350,
                  height: 50,
                  onPressed: () {
                  signIn(emailCrontroller.text, passwordCrontroller.text);


                  },
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),




                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(height: 60),
                        Padding(
                          padding: const EdgeInsets.only(left:190),
                          child: TextButton(onPressed: () {

                            Navigator.pushNamed(context, Myroutes.forgetpasswordRoute);
                          },
                            child: Text(
                                '  Forgot password?',
                                style: TextStyle(
                                    inherit: true,
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(height: 20),
                    Row(
                        children: <Widget>[
                          Expanded(
                              child: Divider()
                          ),
                          Text("or continue with"),
                          Expanded(
                              child: Divider()
                          ),
                        ]
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FloatingActionButton(
                          child: IconButton(

                              icon: const FaIcon(FontAwesomeIcons.google),
                              onPressed: (){},
                          ),

                          backgroundColor: Colors.deepOrangeAccent,
                          foregroundColor: Colors.white,

                          onPressed: () {
                            //Navigator.pushNamed(context, Myroutes.open1Route);
                          },

                        ),
                        FloatingActionButton(
                          child: IconButton(
                              icon: const FaIcon(FontAwesomeIcons.github),
                              onPressed: () {}),
                          backgroundColor: Colors.deepOrangeAccent,
                          foregroundColor: Colors.white,
                          onPressed: () {
                            //Navigator.pushNamed(context, Myroutes.open1Route);
                          },
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),

          ),

        )
    );
  }
  void signIn(String email,String password)async
  {
    if(_formKey.currentState!.validate()){
      await _auth.signInWithEmailAndPassword(email: email, password: password).
    then((uid) => {
      Fluttertoast.showToast(msg:"login Successful"),
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Onboardingpage())),

      }).catchError((e){
        Fluttertoast.showToast(msg: e!.message);

      });
    }
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}




