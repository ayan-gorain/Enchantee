import 'package:enchante/utiles/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,


      body:SingleChildScrollView(
        child: Container(
          height:MediaQuery.of(context).size.height,
          width:double.infinity,

          child: Column(
              children: <Widget>[

                Image.asset('assets/images/loginnn.png',
                  height: 200,
                  width: 280,
                ),
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
                SizedBox(height:40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:27.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color:Colors.grey[200],
                      border: Border.all(color:Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: TextField(
                        decoration:InputDecoration(border:InputBorder.none,
                          labelText: 'Email',
                          hintText:'Enter your Email',
                          icon: Icon(Icons.mail_outline),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:27.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color:Colors.grey[200],
                      border: Border.all(color:Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: TextField(
                        decoration:InputDecoration(border:InputBorder.none,
                          labelText: 'Password',
                          hintText:'Enter your Password',
                          icon: Icon(Icons.lock_outline),
                            suffixIcon: Icon(Icons.visibility_off_outlined),
                        ),
                        obscureText: true,
                      ),
                    ),

                  ),
                ),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    TextButton(onPressed: (){},
                        child: Text(
                          '  Forgot password',
                            style: TextStyle(
                                inherit: true,
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w400)),
                        ),
                  ],
                ),
                const SizedBox(height:10),
                MaterialButton(
                  minWidth:350,
                  height: 50,
                  onPressed: () {
                    Navigator.pushNamed(context, Myroutes.open2Route);
                  },
                  color: Colors.deepOrangeAccent,
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
                SizedBox(height:40),
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
                SizedBox(height:60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      child: IconButton(

                  icon: const FaIcon(FontAwesomeIcons.google),
                  onPressed: () {}
                      ),

                      backgroundColor: Colors.deepOrangeAccent,
                      foregroundColor: Colors.white,

                      onPressed: () {
                        //Navigator.pushNamed(context, Myroutes.open1Route);
                      },

                    ),
                    FloatingActionButton(
                      child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.facebook),
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

      )
    );
  }



  }

class open2page extends StatelessWidget {
  const open2page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}