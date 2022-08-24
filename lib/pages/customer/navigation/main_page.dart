import 'package:enchante/pages/customer/navigation/profile.dart';
import 'package:enchante/pages/customer/navigation/serach.dart';
import 'package:enchante/pages/customer/navigation/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'help.dart';


class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  var PagesAll=[welcomepage(),
    serachpage(),
    profilepage(),
    helppage(),];
  var myindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon((myindex==0)?Icons.home_outlined :Icons.home_outlined),
            Icon((myindex==1)?Icons.list :Icons.list),
            Icon((myindex==2)?Icons.wallet_outlined:Icons.wallet_outlined),
            Icon((myindex==3)?Icons.person_outline :Icons.person_outline),
          ],
          color: Colors.orange,
          buttonBackgroundColor: Colors.lightBlueAccent,

          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              myindex= index;
            });
          },
          animationCurve: Curves.fastLinearToSlowEaseIn,
          backgroundColor: Colors.transparent,

        ),
        body: PagesAll[myindex],
    );
  }
}