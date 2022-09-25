import 'package:enchante/pages/customer/Orders.dart';
import 'package:enchante/pages/customer/help.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utiles/routes.dart';
class confirmpage extends StatefulWidget {
  const confirmpage({Key? key}) : super(key: key);

  @override
  State<confirmpage> createState() => _confirmpageState();
}

class _confirmpageState extends State<confirmpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 140,),
              Center(
                child: Text("Order Placed",style: TextStyle(
                  fontSize: 43,fontWeight: FontWeight.w900,
                ),),
              ),
              Image.asset("assets/images/a.gif",height: 210,
              ),
              SizedBox(height: 40,),
              Text("Thank you for placing the order.",style: TextStyle(
                fontSize: 20
              ),),
              Text("Your order will be collected soon.",style: TextStyle(
                  fontSize: 20
              ),),
              SizedBox(height: 110,),
              MaterialButton(
                minWidth: 300,
                height: 50,
                onPressed: () {
                  Get.to(helpppage());


                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(40)),
                child: Text("Help",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
              ),
              SizedBox(height: 30,),
                MaterialButton(
                minWidth: 300,
                height: 50,
                onPressed: () {
                  Get.to(orderspage());

                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: Text("Orders",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
