import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../utiles/routes.dart';
class shopname extends StatelessWidget {
  const shopname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('vendorusers').snapshots();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shops"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.greenAccent[400],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Myroutes.CatalogProductsRoute);


                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),

                  child: ListTile(
                    title: Text(data['shop name'],style: TextStyle(fontWeight: FontWeight.w800,fontSize: 23),),
                    subtitle: Text(data['adress'],style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                  ),

                ),
              );
            }).toList(),
          );
        },
      ),

    );
  }
}
