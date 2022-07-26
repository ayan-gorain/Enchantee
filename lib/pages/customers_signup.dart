import 'package:enchante/utiles/routes.dart';
import 'package:enchante/widget/user_image_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:image_picker/image_picker.dart';


class Customersignupage extends StatefulWidget {
  const Customersignupage({Key? key}) : super(key: key);

  @override
  State<Customersignupage> createState() => _CustomersignupageState();
}

class _CustomersignupageState extends State<Customersignupage> {
  bool _isHidden = true;
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
                  child: Text("Signup as a customer",
                        style: TextStyle(
                            inherit: true,
                            fontSize: 23,
                            color: Colors.black,
                            fontWeight: FontWeight.w300)),
                ),
                const SizedBox(height: 30),
                const UserImagePicker(),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left:30,right: 30,top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                      prefixIcon : Icon(Icons.person),
                      labelText: 'First Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),

                    ),
                      hintText: 'Enter your First Name',

                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left:30,right: 30,top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(191, 181, 180, 0.2),
                        prefixIcon : Icon(Icons.person),
                        labelText: 'Last Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue),

                        ),
                        hintText: 'Enter your Last Name',

                      ),

                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:30,right: 30,top: 10),
                  child: Container(
                    child: IntlPhoneField(
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
                const SizedBox(height:20),
                MaterialButton(
                  minWidth: 300,
                  height: 50,
                  onPressed: () {
                    Navigator.pushNamed(context, Myroutes.otpRoute);
                  },
                  color: Colors.yellowAccent,
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
      ),

    );
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
