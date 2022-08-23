import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class welcomepage extends StatefulWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
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
        backgroundColor: Colors.redAccent,
        elevation: 50.0,

        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      drawer: Drawer(),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
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
                height: 250.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),),
              SizedBox(height: 20),
              Center(child: Text("Services", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 40,
                color: Colors.black,
              ))),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    minWidth:160,
                    height: 70,
                    onPressed: () {
                      //Navigator.pushNamed(context, Myroutes.signupRoute );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Wash and fold",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  MaterialButton(
                    minWidth:160,
                    height: 70,
                    onPressed: () {
                      //Navigator.pushNamed(context, Myroutes.signupRoute );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Wash and iron",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                  )

                ],

              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    minWidth:160,
                    height: 70,
                    onPressed: () {
                      //Navigator.pushNamed(context, Myroutes.signupRoute );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Dry cleaning",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  MaterialButton(
                    minWidth:160,
                    height: 70,
                    onPressed: () {
                      //Navigator.pushNamed(context, Myroutes.signupRoute );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Ironing",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                  )
                ],), SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    minWidth:160,
                    height: 70,
                    onPressed: () {
                      //Navigator.pushNamed(context, Myroutes.signupRoute );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Stiching",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                  ),

                ],),


            ],
          ),
        ),
      ),

    );
  }
}
