


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../utiles/routes.dart';
import '../../widget/user_image_picker.dart';

class Vendorsignupage  extends StatefulWidget {
   Vendorsignupage ({Key? key}) : super(key: key);

  @override
  State<Vendorsignupage> createState() => _VendorsignupageState();
  final _formKey=GlobalKey<FormState>();

}

class _VendorsignupageState extends State<Vendorsignupage> {
  CollectionReference users = FirebaseFirestore.instance.collection('vendorusers');
  late String namee;
  late String shop_name;
  late String phoneno;
  late String adresss;
  final _formKey=GlobalKey<FormState>();
  bool _isHidden = true;
  bool _isHidden1 = true;


  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Container(
            height:MediaQuery.of(context).size.height,
            width:double.infinity,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                    children:<Widget>[
                      SizedBox(height:10),
                      Padding(
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
                      const SizedBox(height: 20),
                      const imagepicker(),
                      const SizedBox(height: 20),
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
                          onChanged: (value){
                            namee=value;
                          },
                          validator: (value){
                            if(value!.isEmpty){
                              return "name cannot be empty";
                            }
                            return null;

                          },
                        ),

                      ),

          SizedBox(
                height: 10,
          ),
          DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(25.0),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  gradient: RadialGradient(
                    center: Alignment(-0.5, -0.6),
                    radius: 0.15,
                    colors: <Color>[
                      Color.fromRGBO(191, 181, 180, 0.2),
                      Color.fromRGBO(191, 181, 180, 0.2)
                    ],
                    stops: <double>[0.9, 1.0],
                  ),
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
                              phoneno=phone.toString();

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
                            prefixIcon : Icon(Icons.mail_outline),
                            labelText: 'Shop Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),

                            ),
                            hintText: 'Enter your Shop name',

                          ),
                          onChanged: (value){
                            shop_name=value;
                          },

                          validator: (value){
                            if(value!.isEmpty){
                              return "Shop name cannot be empty";
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
                          validator: (value){
                            if(value!.isEmpty){
                              return "name cannot be empty";
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
                            labelText: 'Confirm Password',
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),

                            ),
                            hintText: 'Reconfirm your password',
                            suffix:SizedBox(
                              width: 40,
                              child: InkWell(
                                onTap: _togglePasswordView1,
                                child: Icon(
                                  _isHidden
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
                      const SizedBox(height:40),
                      MaterialButton(
                        minWidth: 220,
                        height: 50,
                        onPressed: () async {
                          await users
                              .add({
                            'full_name': namee,
                            'phone number':phoneno,
                            'shop name':shop_name,
                            'adress':adresss,
                          })
                              .then((value) => print("User Added"))
                              .catchError((error) => print("Failed to add user: $error"));;

                          if(_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, Myroutes.open2Route);
                        }
                        },
                        color: Color.fromRGBO(255, 153,240,1),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(60)),
                        child: Text("Sign up",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            )),
                      ),
           ],
                ),
              ),
            )
        )

    );
      }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }void _togglePasswordView1() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

}
