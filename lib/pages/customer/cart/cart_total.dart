import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cart_crontroller.dart';
class CartTotal extends StatelessWidget {
  const CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartController controller=Get.find();
    return Container(
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
                 Text('${controller.total}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ) ,
    );
  }
}
