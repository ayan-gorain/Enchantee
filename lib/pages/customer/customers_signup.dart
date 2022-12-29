import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enchante/utiles/routes.dart';
import 'package:enchante/widget/user_image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:image_picker/image_picker.dart';

import 'gender_date_page.dart';

class Customersignupage extends StatefulWidget {
  const Customersignupage({Key? key}) : super(key: key);

  @override
  State<Customersignupage> createState() => _CustomersignupageState();
}

class _CustomersignupageState extends State<Customersignupage> {
  TextEditingController countrycode=TextEditingController();



  final FirebaseFirestore db = FirebaseFirestore.instance;

  late String namee;
  late String phoneno;
  late String email;
  late String adresss;

  late String _email, _password;
  final auth = FirebaseAuth.instance;
  var loading = false;

  final _formKey = GlobalKey<FormState>();
  bool _isHidden = true;
  bool _isHidden1 = true;

  @override
  void initState(){
    countrycode.text="+91";
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(right: 150, top: 30),
                  child: Text("Welcome,",
                      style: TextStyle(
                          inherit: true,
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.w800)),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 150, top: 10),
                  child: Text("Signup as a customer",
                      style: TextStyle(
                          inherit: true,
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.w300)),
                ),
                const SizedBox(height: 30),
                const imagepicker(),
                const SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Enter your Full Name',
                    ),
                    onChanged: (value){
                      namee=value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "name cannot be empty";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: Container(
                    child: IntlPhoneField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Phone number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        hintText: 'Enter your phone number',
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                       phoneno=phone.toString();

                      },

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                      prefixIcon: Icon(Icons.mail_outline),
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Enter your Email',
                    ),
                    onChanged: (value) {
                      email=value;
                      setState(() {
                        _email = value.trim();
                      });
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "email cannot be empty";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:30,right: 30,top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                      prefixIcon : Icon(Icons.mail_outline),
                      labelText: 'Adresss',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),

                      ),
                      hintText: 'Enter your Adress',
                      contentPadding: EdgeInsets.symmetric(vertical: 40),

                    ),
                    onChanged: (value){
                      adresss=value;
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return "Adress cannot be empty";
                      }
                      return null;

                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: TextFormField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                      prefixIcon: Icon(Icons.password_sharp),
                      labelText: 'Password',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Enter Password here',
                      suffix: SizedBox(
                        width: 40,
                        child: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(
                            _isHidden1
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _password = value.trim();
                      });
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: TextFormField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                      prefixIcon: Icon(Icons.password_sharp),
                      labelText: 'Confirm Password',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Reconfirm your password',
                      suffix: SizedBox(
                        width: 40,
                        child: InkWell(
                          onTap: _togglePasswordView1,
                          child: Icon(
                            _isHidden1
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password cannot be empty";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 40),

                MaterialButton(
                  minWidth: 220,
                  height: 50,
                  onPressed: () async {

                    if (_formKey.currentState!.validate()) {
                    final data = <String, String>{
                      "name": namee,
                      "email": email,
                      "phone number": phoneno,
                      "adress":adresss
                    };

                    auth.createUserWithEmailAndPassword(
                      email: _email,
                      password: _password,
                    ).then((value) async => {

                          await db.collection("users")
                              .doc(FirebaseAuth.instance.currentUser!.uid)
                              .set(data)
                              .onError((e, _) => print("Error writing document: $e"))
                              .then((value) {
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                                  builder: (context) => Genderdatepage()));
                              })
                          });


                      }

                     //   .catchError((error) => print("Failed to add user: $error"));;



                  },
                  color: Color.fromRGBO(255, 153, 240, 1),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(60)),
                  child: Text("Next",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _togglePasswordView1() {
    setState(() {
      _isHidden1 = !_isHidden1;
    });
  }

  Future _signUp() async {
    setState(() {
      loading = true;
    });
  }
}
