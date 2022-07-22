import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

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

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
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
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        hintText: 'Enter your Phone number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none,
                        labelText: 'Email',
                        hintText: 'Enter your Email',

                        icon: Icon(Icons.mail_outline),

                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      obscureText: _isHidden,
                      decoration: InputDecoration(border: InputBorder.none,
                        labelText: 'Password',
                        hintText: 'Enter your Password',
                        icon: Icon(Icons.lock_outline),
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
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      obscureText: _isHidden,
                      decoration: InputDecoration(border: InputBorder.none,
                        labelText: 'Confirm Password',
                        hintText: 'Enter your Password',
                        icon: Icon(Icons.lock_outline),
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
