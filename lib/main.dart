import 'package:enchante/pages/commonpages/loginggg.dart';
import 'package:enchante/pages/commonpages/splash%20screen.dart';
import 'package:enchante/pages/commonpages/user_model.dart';
import 'package:enchante/pages/customer/Orders.dart';
import 'package:enchante/pages/customer/adresspage1.dart';

import 'package:enchante/pages/customer/cart/CArt.dart';
import 'package:enchante/pages/customer/cart/cartproductpage.dart';
import 'package:enchante/pages/customer/cart/catalog%20screen.dart';
import 'package:enchante/pages/customer/cart/catalog.dart';
import 'package:enchante/pages/customer/confirmation.dart';
import 'package:enchante/pages/customer/help.dart';

import 'package:enchante/pages/customer/navigation/main_page.dart';
import 'package:enchante/pages/customer/navigation/profile_pag%201.dart';
import 'package:enchante/pages/customer/paymentpage.dart';
import 'package:enchante/pages/customer/product_list.dart';
import 'package:enchante/pages/customer/search_places_screen.dart';
import 'package:enchante/pages/customer/shop.dart';
import 'package:enchante/pages/deliveryagent/Deliviryage_signup.dart';
import 'package:enchante/pages/deliveryagent/deliverylogin.dart';
import 'package:enchante/pages/deliveryagent/firsst_ppagw.dart';
import 'package:enchante/pages/deliveryagent/gender_date_1page.dart';
import 'package:enchante/pages/deliveryagent/otp2_page.dart';
import 'package:enchante/pages/commonpages/forgotPassword_page.dart';
import 'package:enchante/pages/customer/gender_date_page.dart';
import 'package:enchante/pages/customer/onboarding_page.dart';
import 'package:enchante/pages/customer/otp_page.dart';
import 'package:enchante/pages/vendor/first_page.dart';
import 'package:enchante/pages/vendor/otp1_page.dart';
import 'package:enchante/pages/vendor/venderlogin.dart';
import 'package:enchante/pages/vendor/vendor_signup.dart';
import 'package:enchante/pages/customer/navigation/welcome_page.dart';
import 'package:enchante/widget/user_image_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:enchante/pages/customer/customers_signup.dart';
import 'package:enchante/utiles/routes.dart';
import 'package:get/get.dart';
import 'pages/commonpages/open_page.dart';
import 'pages/commonpages/open1__page.dart';
import 'pages/customer/login_page.dart';
import 'pages/commonpages/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        "/": (context) =>splashscreenpage(),
        Myroutes.openRoute: (context) =>Openpage(),
        Myroutes.welcomeRoute: (context) =>welcomepage(),
        Myroutes.welcomeRoute: (context) =>userpawge(),
        Myroutes.splashRoute: (context) =>splashscreenpage(),
        Myroutes.open1Route: (context) => Open1page(),
        Myroutes.open2Route: (context) => Open2page(),
        Myroutes.open3Route: (context) => Open3page(),
        Myroutes.logginRoute: (context) => Loginnpage(),
        Myroutes.loginRoute: (context) =>Loginpage(),
        Myroutes.venloginRoute: (context) =>venLoginpage(),
        Myroutes.delloginRoute: (context) =>delLoginpage(),
        Myroutes.signupRoute: (context) =>Signuppage(),
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
        Myroutes.navmainRoute: (context) =>BottomNavBar(),
        Myroutes.strviewRoute: (context) => adresspage(),
         Myroutes.CatalogProductsRoute: (context) => CatalogScreen(),
         Myroutes.CartScreenRoute: (context) => CartScreen(),
         Myroutes.pictakeRoute: (context) =>imagepicker(),
         Myroutes.shopnameRoute: (context) =>shopname(),
         Myroutes. paymentRoute: (context) =>paymentpage(),
         Myroutes. confirmRoute: (context) =>confirmpage(),
         Myroutes. orderssRoute: (context) =>orderspage(),
         Myroutes. helpppRoute: (context) =>infopage(),
         Myroutes. userppRoute: (context) =>userpawge(),








      },
    );
  }
}
