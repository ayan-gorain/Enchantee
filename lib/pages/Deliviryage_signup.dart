import 'package:flutter/material.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../utiles/routes.dart';
import '../widget/user_image_picker.dart';
class deliveryagesignupage  extends StatefulWidget {
  const deliveryagesignupage ({Key? key}) : super(key: key);

  @override
  State<deliveryagesignupage> createState() => _deliveryagesignupageState();
}

class _deliveryagesignupageState extends State<deliveryagesignupage> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


            backgroundColor: Colors.white,
            body: SingleChildScrollView(
        child:Container(
        height:MediaQuery.of(context).size.height,
    width:double.infinity,
    child: Column(
    children:<Widget>[
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
        child: Text("Signup as a Delivery agent",
            style: TextStyle(
                inherit: true,
                fontSize: 19,
                color: Colors.black,
                fontWeight: FontWeight.w300)),
      ),
      const SizedBox(height: 10),
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

      getWidget(true,false),
      const SizedBox(height:0),
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

  Widget getWidget(bool showOtherGender, bool alignVertical) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      alignment: Alignment.center,
      child: GenderPickerWithImage(
        showOtherGender: showOtherGender,
        verticalAlignedText: alignVertical,

        // to show what's selected on app opens, but by default it's Male
        selectedGender: Gender.Male,
        selectedGenderTextStyle: TextStyle(
            color: Color(0xFF8b32a8), fontWeight: FontWeight.bold),
        unSelectedGenderTextStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.normal),
        onChanged: (Gender? gender) {
          print(gender);
        },
        //Alignment between icons
        equallyAligned: true,

        animationDuration: Duration(milliseconds: 300),
        isCircular: true,
        // default : true,
        opacityOfGradient: 0.4,
        padding: const EdgeInsets.all(3),
        size: 50, //default : 40
      ),

    );

  }
}
