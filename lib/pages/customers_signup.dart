import 'package:flutter/material.dart';
class Customersignupage extends StatelessWidget {
  const Customersignupage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child:Container(
          height:MediaQuery.of(context).size.height,
          width:double.infinity,
            child: Column(
              children:<Widget> [
                SizedBox(height:30),
                Padding(
                  padding: const EdgeInsets.only(right:150,top:30),
                  child: Text("Welcome,",
                      style: TextStyle(
                          inherit: true,
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.w800)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:150,top:10),
                  child: Text("Signup as a customer",
                        style: TextStyle(
                            inherit: true,
                            fontSize: 23,
                            color: Colors.black,
                            fontWeight: FontWeight.w300)),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                        child:Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none,
                              labelText: 'First name',
                              hintText: 'Enter your First Name',
                              icon: Icon(Icons.person),
                            ),
                          ),
                        ),
                    ),
                    Expanded(
                        child:Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextField(
                            decoration: InputDecoration(border: InputBorder.none,
                              labelText: 'Middle name(optinal)',
                              hintText: 'Enter your Middle Name',
                              icon: Icon(Icons.person),
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
                SizedBox(height:10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none,
                      labelText: 'Last name',
                      hintText: 'Enter your Last Name',
                      icon: Icon(Icons.person),
                    ),
                  ),
                ),
              ],

            ),


        ),
      ),

    );
  }
}
