import 'package:enchante/utiles/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,


        body: SingleChildScrollView(

          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
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
                  padding: const EdgeInsets.symmetric(horizontal: 27.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none,
                          labelText: 'Email',
                          hintText: 'Enter your Email',
                          icon: Icon(Icons.mail_outline),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Password',
                          hintText: 'Enter your Password',
                          icon: Icon(Icons.lock_outline),
                          suffix: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),

                      ),
                    ),

                  ),
                ),
                SizedBox(height: 10),

                MaterialButton(
                  minWidth: 350,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 60),
                    Padding(
                      padding: const EdgeInsets.only(left:190),
                      child: TextButton(onPressed: () {},
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
                          icon: const FaIcon(FontAwesomeIcons.github),
                          onPressed: () {}),
                      backgroundColor: Colors.deepOrangeAccent,
                      foregroundColor: Colors.white,
                      onPressed: () {
                        //Navigator.pushNamed(context, Myroutes.open1Route);
                      },
                    ), FloatingActionButton(
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

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}




