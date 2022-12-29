import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enchante/pages/commonpages/open1__page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../utiles/routes.dart';
import '../../commonpages/user_model.dart';
class infopage extends StatelessWidget {
  const infopage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 600,
                  decoration:BoxDecoration(

                      image: DecorationImage(
                        image:AssetImage('assets/images/s.png',
                        ),
                        fit: BoxFit.fitWidth,
                      )
                  ) ,
                  child: Column(
                    children: [
                      SizedBox(height: 5,),
                      Center(
                        child: Row(children: [
                          Text("   Hi, ", style: TextStyle(
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
                        ],),
                      ),
                      SizedBox(height: 10,),
                      StreamBuilder(
                          stream: FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).snapshots(),
                          builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (!snapshot.hasData) {
                              return Text("Loading");
                            }
                            var userDocument = snapshot.data;
                            return Text(userDocument!["email"],style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w500
                            ),);
                          }
                      ),

                      SizedBox(height: 10,),

                    ],
                  ),
                ) ,
                 SizedBox(height: 0,),
                 MaterialButton(
                  minWidth:350,
                  height: 100,
                  onPressed: () {
                    Navigator.pushNamed(context, Myroutes.orderssRoute);
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Orders",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),
                SizedBox(height: 10,),
                 MaterialButton(
                  minWidth:350,
                  height: 100,
                  onPressed: () {
                  //  Navigator.pushNamed(context, Myroutes.open1Route);
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("About us",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),
                SizedBox(height: 10,),
                 MaterialButton(
                  minWidth:350,
                  height: 100,
                  onPressed: () {
                    Navigator.pushNamed(context, Myroutes.helppRoute);
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Help Center",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),
                SizedBox(height: 10,),

                  MaterialButton(
                  minWidth:350,
                  height: 100,
                  onPressed: () {
                   // Navigator.pushNamed(context, Myroutes.open1Route);
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Cupons",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),
                SizedBox(height: 10,),
                MaterialButton(
                  minWidth:350,
                  height: 100,
                  onPressed: () {
                   // Navigator.pushNamed(context, Myroutes.open1Route);
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Saved Cards",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),
                SizedBox(height: 10,),
                MaterialButton(
                  minWidth:350,
                  height: 100,
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Open1page()));
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
                SizedBox(height: 50,),

              ],
            ),
          ),
        ),
      ),


    );
  }
}
