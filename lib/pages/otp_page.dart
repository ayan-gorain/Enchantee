import 'package:flutter/material.dart';
class otppage extends StatefulWidget {
  const otppage({Key? key}) : super(key: key);

  @override
  State<otppage> createState() => _otppageState();
}

class _otppageState extends State<otppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Container(
          width:double.infinity,
          child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Verification",
              textAlign: TextAlign.center,
              style: TextStyle(
                  inherit: true,
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.w800)),
          const SizedBox(height: 30),
                Text("Enter the code ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  inherit: true,
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w300)),
          const SizedBox(height: 30),
             ]
          ),

                
              ]
          ),
            
          
        ),
      )
    );
  }

}

