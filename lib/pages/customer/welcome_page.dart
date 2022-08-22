import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class welcomepage extends StatelessWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enchante",
        style: TextStyle(
        color: Colors.white,
        fontSize: 20,
    ),
        ),
          actions: <Widget>[
            TextButton.icon(
                label: Text('Adress',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                icon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,),
                onPressed: () {
                  print('Pressed');
                }
            ),
          ],
        backgroundColor: Colors.greenAccent[400],
        elevation: 50.0,

        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          CarouselSlider(items: [
          Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('assets/images/c1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          ),Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('assets/images/c2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          ),Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('assets/images/c3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          ),Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('assets/images/c4.png'),
              fit: BoxFit.cover,
            ),
          ),
          ),],
            options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),)
        ],
      ),

    );
  }
}
