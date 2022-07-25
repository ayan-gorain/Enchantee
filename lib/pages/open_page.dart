import 'package:enchante/utiles/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Openpage extends StatelessWidget {
  const Openpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.asset(
                "assets/images/log.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text("Welcome",
                textAlign: TextAlign.center,
                style: TextStyle(
                    inherit: true,
                    fontSize: 60,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
            const SizedBox(height: 30.0),
            const Text("To Enchante!!!!!!",
            textAlign: TextAlign.center,
                style: TextStyle(
                    inherit: true,
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
            const SizedBox(height: 50.0),
            const Text("We are happy to see you here",
            textAlign: TextAlign.center,
                style: TextStyle(
                    inherit: true,
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w300)),
            const SizedBox(height: 80.0),
            FloatingActionButton(
              child: Icon(Icons.person),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, Myroutes.open1Route);
              },
            ),
          ],
        ),
      ),
    );
  }
}


