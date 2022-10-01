import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class userpawge extends StatelessWidget {
  const userpawge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = "";
    return Scaffold(
      body:Container(
        height: 200,
        width: 600,
        decoration:BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/images/h.jpg',
              ),
            fit: BoxFit.fitWidth,
          )
        ) ,
        child: Column(
          children: [
            SizedBox(height: 40,),
          Text("Hi,", style: TextStyle(
            fontSize: 45,fontWeight: FontWeight.bold
            ),),
          SizedBox(height: 10,),
          StreamBuilder(
              stream: FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).snapshots(),
              builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return Text("Loading");
                }
                var userDocument = snapshot.data;
                return Text(userDocument!["name"],style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold
                ),);
              }
          ),
            SizedBox(height: 10,),
            StreamBuilder(
                stream: FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).snapshots(),
                builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Text("Loading");
                  }
                  var userDocument = snapshot.data;
                  return Text(userDocument!["email"], style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold
                  ),);
                }

            ),
            SizedBox(height: 10,),

          ],
        ),
      ) ,

    );
  }
}
