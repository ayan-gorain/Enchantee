import 'package:flutter/material.dart';


const kGoogleApiKey = "API_KEY";

class screachplacepage extends StatefulWidget {
  const screachplacepage({Key? key}) : super(key: key);

  @override
  State<screachplacepage> createState() => _screachplacepageState();
}

class _screachplacepageState extends State<screachplacepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Serach Places"),
      ),
      body: Stack(
        children: [

        ],
      )
    );
  }
}
