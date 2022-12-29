import 'package:enchante/pages/customer/cart/cartproductpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utiles/routes.dart';
import '../paymentpage.dart';
import 'cart_total.dart';
import 'cartmodel.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Your Cart"),

          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),

          ),
          elevation: 0.00,
          backgroundColor: Colors.greenAccent[400],
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartProducts(),
            CartTotal(),
            SizedBox(height: 30,),
            MaterialButton(
              minWidth: 100,
              height: 50,
              onPressed: () {
                Get.to(paymentpage());

              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(40)),
              child: Text("Checkout",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
