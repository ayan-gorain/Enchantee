import 'package:flutter/material.dart';

class Open2page extends StatelessWidget {
  const Open2page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            SizedBox(height: 400,),
            Center(
              child: Text(
                "Wait for the order to come...",
                style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),


    );
  }
}
