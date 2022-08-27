import 'package:flutter/material.dart';
class serachpage extends StatelessWidget {
  const serachpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 120,),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cart.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 120,),
            SizedBox(
              height: 60,
              width: 300,
              child: ElevatedButton(onPressed: (){}, child:Text(
                "Your cart"),
                style:ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.red,
                  side: BorderSide(width: 1.0, color: Colors.red,)
                ),



              ),
            ),
            SizedBox(height: 300,)
          ],
        ),
      ),
      
    );
  }
}

