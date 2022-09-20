 import 'package:enchante/pages/customer/cart/CArt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'catalog.dart';
class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Catalog"),
        ),
        body:SafeArea(
          child: Column(
            children: [
              CatalogProducts(),
              ElevatedButton(onPressed: () => Get.to(()=>CartScreen()),
                child: Text("Go to cart"),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
