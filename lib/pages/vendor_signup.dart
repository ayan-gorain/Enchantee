
import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../utiles/routes.dart';
import '../widget/user_image_picker.dart';

class Vendorsignupage  extends StatefulWidget {
  const Vendorsignupage ({Key? key}) : super(key: key);

  @override
  State<Vendorsignupage> createState() => _VendorsignupageState();
}

class _VendorsignupageState extends State<Vendorsignupage> {
  bool _isHidden = true;

  final List<String> items = [
    'Laundry shop',
    'tailor shop',

  ];
  String? selectedValue;

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
                      const SizedBox(height: 20),
                      const UserImagePicker(),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(left:30,right: 30,top: 10),
                        child: TextField(
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

                child: DropdownButtonHideUnderline(

                  child: DropdownButton2(

                    hint: Row(
                      children: [
                        SizedBox(width: 15),
                        Icon(
                          Icons.shop_rounded,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 14),
                        Text(
                          'Select Shop',
                          style: TextStyle(
                            fontSize: 15,
                            color: Theme
                                .of(context)
                                .hintColor,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    buttonHeight: 55,
                    buttonWidth: 320,
                    itemHeight: 70,
                  ),
                ),
              ),
                      const Padding(
                        padding: EdgeInsets.only(left:30,right: 30,top: 10),
                        child: TextField(
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
                        padding: const EdgeInsets.only(left:30,right: 30,top: 10),
                        child: TextField(
                          obscureText: _isHidden,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                            prefixIcon : Icon(Icons.person),
                            labelText: 'Password',
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),

                            ),
                            hintText: 'Enter Password here',
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:30,right: 30,top: 10),
                        child: TextField(
                          obscureText: _isHidden,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                            prefixIcon : Icon(Icons.person),
                            labelText: 'Confirm Password',
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),

                            ),
                            hintText: 'Reconfirm your password',
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height:40),
                      MaterialButton(
                        minWidth: 220,
                        height: 50,
                        onPressed: () {
                          Navigator.pushNamed(context, Myroutes.otpRoute);
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
                )
            ),
        )

    );
      }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
