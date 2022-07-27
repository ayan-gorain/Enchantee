import 'package:enchante/pages/Deliviryage_signup.dart';
import 'package:enchante/pages/forgotPassword_page.dart';
import 'package:enchante/pages/otp_page.dart';
import 'package:enchante/pages/vendor_signup.dart';
import 'package:flutter/material.dart';
import 'package:enchante/pages/customers_signup.dart';
import 'package:enchante/pages/first_page.dart';
import 'package:enchante/utiles/routes.dart';
import 'pages/open_page.dart';
import 'pages/open1__page.dart';
import 'pages/login_page.dart';
import 'pages/signup_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => Openpage(),
        Myroutes.openRoute: (context) =>Openpage(),
        Myroutes.open1Route: (context) => Open1page(),
        Myroutes.loginRoute: (context) =>Loginpage(),
        Myroutes.signupRoute: (context) =>Signuppage(),
        Myroutes.open2Route: (context) =>Open2page(),
        Myroutes.customersignupRoute: (context) =>Customersignupage(),
        Myroutes.VendorsignupRoute: (context) =>Vendorsignupage(),
        Myroutes.deliveryagesignupRoute: (context) =>deliveryagesignupage(),
        Myroutes.forgetpasswordRoute: (context) =>Forgotpasswordpage(),
        Myroutes.otpRoute: (context) =>otppage(),

      },
    );
  }
}
