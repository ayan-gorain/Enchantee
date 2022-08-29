import 'package:flutter/material.dart';
class adresspage extends StatefulWidget {
  const adresspage({Key? key}) : super(key: key);

  @override
  State<adresspage> createState() => _adresspageState();
}

class _adresspageState extends State<adresspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select a location"),

      ),
      body: Stack(

      ),
    );
  }
}
