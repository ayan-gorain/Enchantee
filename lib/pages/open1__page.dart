import 'package:enchante/utiles/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Open1page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Hello again!!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  inherit: true,
                                  fontSize: 50,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800)),
                          const SizedBox(height: 30),
                          Text("Welcome Back \n You have missed",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  inherit: true,
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300)),
                          
                        ]),
                    const SizedBox(height: 40),
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/happ.webp'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 90),
                    Column(children: <Widget>[
                      MaterialButton(
                        minWidth:350,
                        height: 60,
                        onPressed: () {
                          Navigator.pushNamed(context, Myroutes.loginRoute);
                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text("Login",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            )),
                      )
                    ]),
                    const SizedBox(height: 25),
                    Column(children: <Widget>[
                      MaterialButton(
                        minWidth:350,
                        height: 60,
                        onPressed: () {
                          Navigator.pushNamed(context, Myroutes.signupRoute );
                        },
                        color: Colors.yellow,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text("Sign up",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            )),
                      )
                    ]),
                  ],
                ))));
  }
}
