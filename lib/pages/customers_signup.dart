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
                SizedBox(height: 30),

                const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(229, 235, 138, 0.2),
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
                  padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(229, 235, 138, 0.2),
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
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: IntlPhoneField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(229, 235, 138, 0.2),
                        prefixIcon : Icon(Icons.person),
                        labelText: 'First name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue),

                        ),
                        hintText: 'Enter your First Name',

                      ),

                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(229, 235, 138, 0.2),
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
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(229, 235, 138, 0.2),
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
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(229, 235, 138, 0.2),
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
