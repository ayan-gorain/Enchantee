import 'package:enchante/utiles/routes.dart';
import 'package:flutter/material.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:flutter_linear_datepicker/flutter_datepicker.dart';

import 'package:intl/intl.dart';
class Genderdate1page extends StatefulWidget {
  const Genderdate1page({Key? key}) : super(key: key);

  @override
  State<Genderdate1page> createState() => _Genderdate1pageState();
}

class _Genderdate1pageState extends State<Genderdate1page> {
  DateTime _selectedDate = DateTime.now();
  String selDate = "";


  @override
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    var formatter = new DateFormat('yyyy/MM/dd');
    String formattedDate = formatter.format(now);
    // 2016-01-25


    return Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
            child:Container(
                width:double.infinity,
                child: Column(
                    children: <Widget>[
                      const SizedBox(height: 5),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            AppBar(
                              title: Text(''),// You can add title here
                              leading: IconButton(
                                icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                              backgroundColor: Colors.white.withOpacity(0.3), //You can make this transparent
                              elevation: 0.0, //No shadow
                            ),

                            const Text("Gender",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    inherit: true,
                                    fontSize: 45,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800)),
                            const SizedBox(height: 30),
                            const Text("Select your gender ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    inherit: true,
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300)),
                            getWidget(true,true),
                            const Text("Date of Birth",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    inherit: true,
                                    fontSize: 45,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800)),
                            const SizedBox(height: 40),
                            const Text("Select your Date of birth",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    inherit: true,
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300)),
                            const SizedBox(height: 30),
                            LinearDatePicker(
                              startDate: "1970/01/01",
                              endDate: formattedDate,
                              initialDate: formattedDate,
                              dateChangeListener: (String selectedDate) {

                                selDate = selectedDate;
                              },
                              showDay: true,
                              labelStyle: const TextStyle(
                                fontFamily: 'sans',
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                              selectedRowStyle: const TextStyle(
                                fontFamily: 'sans',
                                fontSize: 18.0,
                                color: Colors.deepOrange,
                              ),
                              unselectedRowStyle: const TextStyle(
                                fontFamily: 'sans',
                                fontSize: 16.0,
                                color: Colors.blueGrey,
                              ),
                              yearText: "Year",
                              monthText: "Month",
                              dayText: "Day",
                              showLabels: true,
                              columnWidth: 100,
                              showMonthName: false,
                              isJalaali: false,
                            ),


                          ]
                      ),
                      MaterialButton(
                        minWidth: 220,
                        height: 50,
                        onPressed: () {
                          Navigator.pushNamed(context, Myroutes.otp2Route);
                        },
                        color: const Color.fromRGBO(255, 153,240,1),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(60)),
                        child: const Text("Sign up",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ]
                )
            )
        )
    );
  }
  Widget getWidget(bool showOtherGender, bool alignVertical) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40),
      alignment: Alignment.center,
      child: GenderPickerWithImage(
        showOtherGender: showOtherGender,
        verticalAlignedText: alignVertical,

        // to show what's selected on app opens, but by default it's Male
        selectedGender: null,
        selectedGenderTextStyle: const TextStyle(
            color: Color(0xFF8b32a8), fontWeight: FontWeight.bold),
        unSelectedGenderTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.normal),
        onChanged: (Gender? gender) {
          print(gender);
        },
        //Alignment between icons
        equallyAligned: true,

        animationDuration: const Duration(milliseconds: 300),
        isCircular: true,
        // default : true,
        opacityOfGradient: 0.4,
        padding: const EdgeInsets.all(3),
        size: 70, //default : 40
      ),


    );


  }
}
