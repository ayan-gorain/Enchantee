import 'dart:async';

import 'package:flutter/material.dart';

import 'open_page.dart';

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
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_)=>Openpage()));
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
