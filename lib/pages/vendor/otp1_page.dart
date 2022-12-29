import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utiles/routes.dart';
import 'first_page.dart';
import 'first_page.dart';
import 'first_page.dart';
class otppage1 extends StatefulWidget {
  const otppage1({Key? key}) : super(key: key);

  @override
  State<otppage1> createState() => _otppage1State();
}

class _otppage1State extends State<otppage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width:double.infinity,
              child: Column(
                  children: <Widget>[
                    const SizedBox(height: 5),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          AppBar(
                            title: Text(''),// You can add title here
                            leading: new IconButton(
                              icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                            backgroundColor: Colors.white.withOpacity(0.3), //You can make this transparent
                            elevation: 0.0, //No shadow
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Image.asset("assets/images/otp.jpg", fit: BoxFit.cover,),
                          ),
                          Text("Verification Code",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  inherit: true,
                                  fontSize: 45,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800)),
                          const SizedBox(height: 30),
                          Text("Enter the code sent \n in the mobile number",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  inherit: true,
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300)),
                          const SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height:68,width:64,
                                child: TextField(
                                  onChanged: (value){
                                    if (value.length==1){
                                      FocusScope.of(context).nextFocus();
                                    }

                                  },
                                  decoration: InputDecoration(
                                    hintText: "0",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                      borderSide: BorderSide(color: Colors.blue),

                                    ),
                                  ),
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly],
                                ),
                              ),
                              SizedBox(
                                height:68,width:64,
                                child: TextField(
                                  onChanged: (value){
                                    if (value.length==1){
                                      FocusScope.of(context).nextFocus();
                                    }

                                  },
                                  decoration: InputDecoration(
                                    hintText: "0",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                      borderSide: BorderSide(color: Colors.blue),

                                    ),
                                  ),
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly],
                                ),
                              ),
                              SizedBox(
                                height:68,width:64,
                                child: TextField(
                                  onChanged: (value){
                                    if (value.length==1){
                                      FocusScope.of(context).nextFocus();
                                    }

                                  },
                                  decoration: InputDecoration(
                                    hintText: "0",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                      borderSide: BorderSide(color: Colors.blue),

                                    ),
                                  ),
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly],
                                ),
                              ),
                              SizedBox(
                                height:68,width:64,
                                child: TextField(
                                  onChanged: (value){
                                    if (value.length==1){
                                      FocusScope.of(context).nextFocus();
                                    }

                                  },

                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: "0",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                      borderSide: BorderSide(color: Colors.blue),

                                    ),
                                  ),
                                  inputFormatters: [LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly],

                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 60,),
                          MaterialButton(
                            minWidth: 200,
                            height: 50,
                            onPressed: () {
                              Navigator.pushNamed(context, Myroutes.open2Route);
                            },
                            color: Color.fromRGBO(51,255,255,1),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(60)),
                            child: Text("Verify",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ]
                    ),


                  ]
              ),


            ),
          ),
        )
    );
  }
}
