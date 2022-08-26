import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
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
        title: Text("My Cart"),
        centerTitle: true,
        actions: [
          Center(
            child: Badge(
              badgeContent: Text('0',style: TextStyle(color: Colors.white),),
              animationDuration: Duration(milliseconds: 300),
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ),
          SizedBox(width: 40),
        ],
      ),
    );
  }
}
