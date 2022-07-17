import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading:IconButton(onPressed:(){
          Navigator.pop(context);
        },
        icon:Icon(Icons.arrow_back_ios,size:20,color:Colors.black),),
      ),
      body:Container(
        height:MediaQuery.of(context).size.height,
        width:double.infinity,
        child: Column(
            children: <Widget>[
              Text("Login ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      inherit: true,
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.w800)),
              SizedBox(height:5),
              Text("Login in with your account  ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      inherit: true,
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w200)),
            ],
        ),
      )
    );
  }
  Widget makeInput({label,obsecureText=false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Text("Email ",
        textAlign: TextAlign.center,
        style: TextStyle(
            inherit: true,
            fontSize: 25,
            color: Colors.black87,
            fontWeight: FontWeight.w200)),],


    );

  }
}
