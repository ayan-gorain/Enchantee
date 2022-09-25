import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enchante/pages/customer/cart/cartmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cart_crontroller.dart';
class CartTotal extends StatelessWidget {
  const CartTotal({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final CartController controller=Get.find();
    return Obx(()=>
       Container(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
                  if(controller.products.length == 0)...[
                   Text('0',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),

              )
      ]else...[
                    Text('${controller.total}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]


            ],
          ),
        ) ,
      ),
    );
  }
}
