import 'package:enchante/pages/deliveryagent/Deliviryage_signup.dart';
import 'package:enchante/pages/deliveryagent/gender_date_1page.dart';
import 'package:enchante/pages/deliveryagent/otp2_page.dart';
import 'package:enchante/pages/commonpages/forgotPassword_page.dart';
import 'package:enchante/pages/customer/gender_date_page.dart';
import 'package:enchante/pages/customer/onboarding_page.dart';
import 'package:enchante/pages/customer/otp_page.dart';
import 'package:enchante/pages/vendor/otp1_page.dart';
import 'package:enchante/pages/vendor/vendor_signup.dart';
import 'package:enchante/pages/customer/navigation/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:enchante/pages/customer/customers_signup.dart';
import 'package:enchante/utiles/routes.dart';
import 'pages/commonpages/open_page.dart';
import 'pages/commonpages/open1__page.dart';
import 'pages/commonpages/login_page.dart';
import 'pages/commonpages/signup_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => welcomepage(),
        Myroutes.openRoute: (context) =>Openpage(),
        Myroutes.open1Route: (context) => Open1page(),
        Myroutes.loginRoute: (context) =>Loginpage(),
        Myroutes.signupRoute: (context) =>Signuppage(),
        Myroutes.welcomeRoute: (context) =>welcomepage(),
        Myroutes.customersignupRoute: (context) =>Customersignupage(),
        Myroutes.VendorsignupRoute: (context) =>Vendorsignupage(),
        Myroutes.deliveryagesignupRoute: (context) =>deliveryagesignupage(),
        Myroutes.forgetpasswordRoute: (context) =>Forgotpasswordpage(),
        Myroutes.otpRoute: (context) =>otppage(),
        Myroutes.otp1Route: (context) =>otppage1(),
        Myroutes.otp2Route: (context) =>otppage2(),
        Myroutes.genderdateRoute: (context) =>Genderdatepage(),
        Myroutes.genderdate1Route: (context) =>Genderdate1page(),
        Myroutes.onboardingRoute: (context) =>Onboardingpage(),

      },
    );
  }
}
