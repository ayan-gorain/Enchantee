import 'package:enchante/utiles/routes.dart';
import 'package:flutter/material.dart';
class Signuppage extends StatelessWidget {
  const Signuppage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SizedBox(
          child:Container(
            height:MediaQuery.of(context).size.height,
            width:double.infinity,
            child:SingleChildScrollView(
              child: Column(
                children:<Widget> [
                  SizedBox(height:200),
                  Text("Sign up ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          inherit: true,
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.w800)),
                  const SizedBox(height:130),

                  MaterialButton(
                    minWidth:350,
                    height: 50,
                    onPressed: () {
                      Navigator.pushNamed(context, Myroutes.customersignupRoute);
                    },
                    color: Color.fromRGBO(102,255,178,1),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("Customer",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                  ),const SizedBox(height:40),
                  MaterialButton(
                    minWidth:350,
                    height: 50,
                    onPressed: () {
                     Navigator.pushNamed(context, Myroutes.VendorsignupRoute);
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("Vendor",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                  ),const SizedBox(height:40),
                  MaterialButton(
                    minWidth:350,
                    height: 50,
                    onPressed: () {
                      Navigator.pushNamed(context, Myroutes.deliveryagesignupRoute);
                    },
                    color: Colors.lightGreenAccent,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("Delivery agent",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ],
              ),
            ),
          ),
      ),
      
    );
  }
}