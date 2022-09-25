import 'package:enchante/pages/customer/confirmation.dart';
import 'package:enchante/utiles/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class paymentpage extends StatefulWidget {
  const paymentpage({Key? key}) : super(key: key);

  @override
  State<paymentpage> createState() => _paymentpageState();
}

class _paymentpageState extends State<paymentpage> {
  bool? isChecked=false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Payment"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(60),
              bottomLeft: Radius.circular(60)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.orangeAccent[400],
      ),
      body:SizedBox(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children:<Widget> [
                SizedBox(height: 50,),
                Image.asset("assets/images/pay.jpg",),
                SizedBox(height: 70,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(value: isChecked,
                        activeColor: Colors.orangeAccent,
                        onChanged: (newBool){
                      setState(() {
                        isChecked=newBool;
                      });
                    }),
                    Text("Payment on Delivery(POD)\n (Patym,Google Pay,Phone Pay\nCash)",style: TextStyle(
                      fontWeight: FontWeight.w300,fontSize: 20
                    ),)
                  ],

                ),
                SizedBox(height: 140,),
                MaterialButton(
                  minWidth: 350,
                  height: 50,
                  onPressed: () {
                    Get.to(confirmpage());

                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(40)),
                  child: Text("Confirm",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),

              ],
            ),
          ),
        )
      )
    );
  }
}
