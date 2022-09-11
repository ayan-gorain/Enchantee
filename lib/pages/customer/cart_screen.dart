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
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left,
          color: Colors.black,), onPressed: () {  },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text("Shopping Cart",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21.0,
              ),),
              SizedBox(height: 12.0,),
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(image: AssetImage("assets/images/shirt.png")
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(

              ),

            ],
          ),
        ),
      ),


    );
  }
}
