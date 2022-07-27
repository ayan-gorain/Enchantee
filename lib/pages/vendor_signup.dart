import 'package:flutter/material.dart';

import '../widget/user_image_picker.dart';
class Vendorsignupage  extends StatelessWidget {
  const Vendorsignupage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
            child:Container(
                height:MediaQuery.of(context).size.height,
                width:double.infinity,
                child: Column(
                    children:<Widget>[
                      SizedBox(height:10),
                      const Padding(
                        padding: EdgeInsets.only(right:150,top:30),
                        child: Text("Welcome,",
                            style: TextStyle(
                                inherit: true,
                                fontSize: 50,
                                color: Colors.black,
                                fontWeight: FontWeight.w800)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right:150,top:10),
                        child: Text("Signup as a Vendor",
                            style: TextStyle(
                                inherit: true,
                                fontSize: 23,
                                color: Colors.black,
                                fontWeight: FontWeight.w300)),
                      ),
                      const SizedBox(height: 30),
                      const UserImagePicker(),
                      const SizedBox(height: 20),
                    ]
                )

            ),
        )

    );
  }
}
