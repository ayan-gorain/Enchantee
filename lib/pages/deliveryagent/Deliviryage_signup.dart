import 'dart:ffi';

import 'package:enchante/pages/deliveryagent/gender_date_1page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../utiles/routes.dart';
import '../../widget/user_image_picker.dart';
class deliveryagesignupage  extends StatefulWidget {
  const deliveryagesignupage ({Key? key}) : super(key: key);

  @override
  State<deliveryagesignupage> createState() => _deliveryagesignupageState();
}

class _deliveryagesignupageState extends State<deliveryagesignupage> {
  late String _email, _password;
  final auth = FirebaseAuth.instance;
  var loading = false;
  final _formKey=GlobalKey<FormState>();
  bool _isHidden = true;
  bool _isHidden1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


            backgroundColor: Colors.white,
            body: SizedBox(
            height:MediaQuery.of(context).size.height,
    width:double.infinity,
    child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
        children:<Widget>[
               Padding(
                padding: EdgeInsets.only(right:150,top:80),
                child: Text("Welcome,",
                    style: TextStyle(
                        inherit: true,
                        fontSize: 50,
                        color: Colors.black,
                        fontWeight: FontWeight.w800)),
              ),
              const Padding(
                padding: EdgeInsets.only(right:150,top:0),
                child: Text("Signup as a Delivery agent",
                    style: TextStyle(
                        inherit: true,
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w300)),
              ),
              const SizedBox(height: 40),
              const UserImagePicker(),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left:30,right: 30,top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                    prefixIcon : Icon(Icons.person),
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.blue),

                    ),
                    hintText: 'Enter your full Name',

                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "name cannot be empty";
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
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.blue),

                    ),
                    hintText: 'Enter your Email',

                  ),
                  onChanged: (value) {
                    setState(() {
                      _email = value.trim();
                    });
                  },
                  validator: (value){
                    if(value!.isEmpty){
                      return "Email cannot be empty";
                    }
                    return null;

                  },
                ),

              ),
              Padding(
                padding: EdgeInsets.only(left:30,right: 30,top: 10),
                child: Container(
                  child: IntlPhoneField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                      prefixIcon : Icon(Icons.person),
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
                    },
                  ),
                ),
              ),
          Padding(
            padding: EdgeInsets.only(left:30,right: 30,top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                prefixIcon : Icon(Icons.document_scanner_outlined),
                labelText: 'Addhar number/Pan number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(color: Colors.blue),

                ),
                hintText: 'Enter your Addhar /Pan number',

              ),
              validator: (value){
                if(value!.isEmpty){
                  return "addhar no /pan no cannot be empty";
                }
                return null;

              },
            ),
          ),
              Padding(
                padding: const EdgeInsets.only(left:30,right: 30,top: 10),
                child: TextFormField(

                  obscureText: _isHidden,
                  decoration: InputDecoration(

                    filled: true,
                    fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                    prefixIcon : Icon(Icons.password_sharp),
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
                    _isHidden
                        ? Icons.visibility
                        : Icons.visibility_off, size: 18,
                  ),
                ),
              ),
            ),
                  onChanged: (value) {
                    setState(() {
                      _password = value.trim();
                    });
                  },
                  validator: (value){
                    if(value!.isEmpty){
                      return "password cannot be empty";
                    }
                    return null;

                  },

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:30,right: 30,top: 10),
                child: TextFormField(
                  obscureText: _isHidden1,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                    prefixIcon : Icon(Icons.password_sharp),
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
                              : Icons.visibility_off, size: 18,
                        ),
                      ),
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "name cannot be empty";
                    }
                    return null;

                  },
                ),

              ),

              const SizedBox(height:20),
              MaterialButton(
                minWidth: 220,
                height: 50,
                onPressed: () {

                  if(_formKey.currentState!.validate()) {
                    auth.createUserWithEmailAndPassword(
                      email: _email,
                      password: _password,
                    );
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Genderdate1page()));
                  }
                },
                color: const Color.fromRGBO(255, 153,240,1),
                shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(60)),
                child: const Text("Next",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
              ),

        ]
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


}
