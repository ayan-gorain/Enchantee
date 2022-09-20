import 'package:enchante/pages/customer/cart/cart_crontroller.dart';
import 'package:enchante/pages/customer/cart/cartmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class CatalogProducts extends StatefulWidget {
  const CatalogProducts({Key? key}) : super(key: key);

  @override
  State<CatalogProducts> createState() => _CatalogProductsState();
}

class _CatalogProductsState extends State<CatalogProducts> {
  @override
  Widget build(BuildContext context) {
    return Flexible(child: ListView.builder(itemCount: Product.products.length, itemBuilder: (context,int index){
      return CatalogProductCard(index:index);
    }));
  }
}
class CatalogProductCard extends StatelessWidget{
  final cartController=Get.put(CartController());
  final int index;
  CatalogProductCard({
    Key? key,
    required this.index,
    })  : super(key:key);

  @override
  Widget build(BuildContext context) {
  return Padding(padding: const EdgeInsets.symmetric(horizontal:10,vertical: 10 ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    CircleAvatar(radius:40,
    backgroundColor: Colors.white70,
    backgroundImage: NetworkImage(
      Product.products[index].imageUrl,
    ),
    ),
    Text(Product.products[index].name),
    Text('${Product.products[index].price}'),
      IconButton(onPressed: (){
        cartController.addProduct(Product.products[index]);
      }, icon: Icon(
        Icons.add_circle,
      ))
  ],),);
  }
}
