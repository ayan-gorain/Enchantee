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
      child: Column(
      children:<Widget>[
            const Padding(
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
          padding: EdgeInsets.only(left:30,right: 30,top: 10),
          child: TextField(
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
          ),
        ),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30,top: 10),
              child: TextField(

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

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:30,right: 30,top: 10),
              child: TextField(
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
              ),
            ),

            const SizedBox(height:20),
            MaterialButton(
              minWidth: 220,
              height: 50,
              onPressed: () {
                Navigator.pushNamed(context, Myroutes.genderdate1Route);
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
