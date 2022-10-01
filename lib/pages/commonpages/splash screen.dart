import 'dart:async';

import 'package:flutter/material.dart';

import '../customer/navigation/main_page.dart';
import '../customer/navigation/welcome_page.dart';
import 'open_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class splashscreenpage extends StatefulWidget {
  const splashscreenpage({Key? key}) : super(key: key);

  @override
  State<splashscreenpage> createState() => _splashscreenpageState();
}

class _splashscreenpageState extends State<splashscreenpage> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),(){


      try {
        User? firebaseUserr = FirebaseAuth.instance.currentUser;
        var user = firebaseUserr ?? null;

        if (user?.uid != null) {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (_)=>Openpage()));

        }
        else
          {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_)=>BottomNavBar()));
          }
      } catch (e) {
       // log(e.toString());
      }





    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png',height: 300,),
            SizedBox(height: 100,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
