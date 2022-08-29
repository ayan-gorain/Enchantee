import 'package:flutter/material.dart';

import '../../../utiles/routes.dart';
class helppage extends StatelessWidget {
  const helppage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),
      body:SafeArea(
        child: Container(
          child: SingleChildScrollView(
             child: Column(
               children: [
                 SizedBox(height: 50,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     CircleAvatar(
                       backgroundColor: Colors.brown.shade800,
                       child: const Text('AH'),
                       radius: 50,
                     ),
                     Text('Name',style: TextStyle(
                       fontSize: 40,fontWeight: FontWeight.w600,
                     ),)
                   ],
                 ),
                 SizedBox(height: 50,),
                 MaterialButton(
                   minWidth:350,
                   height: 70,
                   onPressed: () {
                     //Navigator.pushNamed(context, Myroutes.productshowRoute );
                   },
                   color: Colors.white,
                   shape: RoundedRectangleBorder(
                       side: BorderSide(
                         color: Colors.black,
                       ),
                       borderRadius: BorderRadius.circular(10)),
                   child: Text("Order",
                       style: TextStyle(
                         fontWeight: FontWeight.w500,
                       )),
                 ),
                 SizedBox(height: 20,),
                 MaterialButton(
                   minWidth:350,
                   height: 70,
                   onPressed: () {
                     // Navigator.pushNamed(context, Myroutes.productshowRoute );
                   },
                   color: Colors.white,
                   shape: RoundedRectangleBorder(
                       side: BorderSide(
                         color: Colors.black,
                       ),
                       borderRadius: BorderRadius.circular(10)),
                   child: Text("Help center",
                       style: TextStyle(
                         fontWeight: FontWeight.w500,
                       )),
                 ),
                 SizedBox(height: 20,),
                 MaterialButton(
                   minWidth:350,
                   height: 70,
                   onPressed: () {
                     //Navigator.pushNamed(context, Myroutes.productshowRoute );
                   },
                   color: Colors.white,
                   shape: RoundedRectangleBorder(
                       side: BorderSide(
                         color: Colors.black,
                       ),
                       borderRadius: BorderRadius.circular(10)),
                   child: Text("Saved cards",
                       style: TextStyle(
                         fontWeight: FontWeight.w500,
                       )),
                 ),
                 SizedBox(height: 20,),
                 MaterialButton(
                   minWidth:350,
                   height: 70,
                   onPressed: () {
                     //Navigator.pushNamed(context, Myroutes.productshowRoute );
                   },
                   color: Colors.white,
                   shape: RoundedRectangleBorder(
                       side: BorderSide(
                         color: Colors.black,
                       ),
                       borderRadius: BorderRadius.circular(10)),
                   child: Text("Cupons",
                       style: TextStyle(
                         fontWeight: FontWeight.w500,
                       )),
                 ),
                 SizedBox(height: 20,),
                 MaterialButton(
                   minWidth:350,
                   height: 70,
                   onPressed: () {
                     //Navigator.pushNamed(context, Myroutes.productshowRoute );
                   },
                   color: Colors.white,
                   shape: RoundedRectangleBorder(
                       side: BorderSide(
                         color: Colors.black,
                       ),
                       borderRadius: BorderRadius.circular(10)),
                   child: Text("About",
                       style: TextStyle(
                         fontWeight: FontWeight.w500,
                       )),

                 ),
                 SizedBox(height: 20,),
                 MaterialButton(
                   minWidth:350,
                   height: 70,
                   onPressed: () {
                     //Navigator.pushNamed(context, Myroutes.productshowRoute );
                   },
                   color: Colors.white,
                   shape: RoundedRectangleBorder(
                       side: BorderSide(
                         color: Colors.black,
                       ),
                       borderRadius: BorderRadius.circular(10)),
                   child: Text("Profile Details",
                       style: TextStyle(
                         fontWeight: FontWeight.w500,
                       )),
                 ),
                 SizedBox(height: 40,),
                 MaterialButton(
                   minWidth:350,
                   height: 70,
                   onPressed: () {
                     Navigator.pushNamed(context, Myroutes.open1Route);
                   },
                   color: Colors.white,
                   shape: RoundedRectangleBorder(
                       side: BorderSide(
                         color: Colors.redAccent,
                       ),
                       borderRadius: BorderRadius.circular(10),
                   ),
                   child: Text("Log out",
                       style: TextStyle(
                         fontWeight: FontWeight.w500,
                       )),
                 ),
                 SizedBox(height: 40,),


               ],
             ),
          ),
        ),

      ),
    );
  }
}
