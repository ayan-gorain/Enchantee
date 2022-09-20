import 'package:enchante/pages/customer/cart/cart_crontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cartmodel.dart';


class CartProducts extends StatefulWidget {
  const CartProducts({Key? key}) : super(key: key);

  @override
  State<CartProducts> createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  final CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return  Obx(
        ()=> SizedBox(
          height: 600,
          child: ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (BuildContext context, int index) {
                return CartProductCard(
                  controller: controller,
                  product: controller.products.keys.toList()[index],
                  quantity: controller.products.values.toList()[index],
                  index: index,

                );
              }
          )
      ),
    );
  }
}



class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;

  const CartProductCard({Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              product.imageUrl,
            ),
          ),
          SizedBox(width: 20,),
          Expanded(child: Text(product.name)),
          IconButton(onPressed: (){
            controller.removeProduct(product);
          }, icon: Icon(Icons.remove_circle)),
          Text('${quantity}'),
          IconButton(onPressed: (){
            controller.addProduct(product);
          }, icon: Icon(Icons.add_circle)),

        ],
      ),
    );
  }
}


