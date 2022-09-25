import 'package:flutter/material.dart';
class helpppage extends StatelessWidget {
  const helpppage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Request Help"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.greenAccent[400],
      ),
      body: SizedBox(
        child:Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
             Image.asset("assets/images/x.jpg",height: 300,),
              SizedBox(height: 30,),
              Text("How can we help you?",style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 30,),
              Text("It loooks like you are expericeing peomblems ",style: TextStyle(
                fontWeight: FontWeight.w500
              ),),
              Text("with our sign in process.We are here to help you",style: TextStyle(
                  fontWeight: FontWeight.w500),),
              Text("Please get in touch with us",style: TextStyle(
    fontWeight: FontWeight.w500)),            SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(


                    children: [
                      SizedBox(
                        height: 150,
                        width: 160,
                        child: ElevatedButton(style: ElevatedButton.styleFrom(
                          primary: Colors.white, //background color of button
                          side: BorderSide(width:3, color:Colors.black), //border width and color
                          elevation: 3, //elevation of button
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(30)
                          ),
                            padding: EdgeInsets.all(20) //content padding inside button
                        ),
                            onPressed: (){
                              //code to execute when this button is pressed.
                            },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon( // <-- Icon
                                Icons.whatsapp_rounded,
                                size: 24.0,
                                color: Colors.black,
                              ),
                              SizedBox(height: 5,),
                              Text('Chat With us',style: TextStyle(
                                color: Colors.black,
                              ),), // <-- Text
                              SizedBox(

                              ),

                            ],
                          ),




                        ),

                        ),
                      SizedBox(width: 30,),
                      SizedBox(
                        height: 150,
                        width: 160,
                        child: ElevatedButton(style: ElevatedButton.styleFrom(
                          primary: Colors.white, //background color of button
                          side: BorderSide(width:3, color:Colors.black), //border width and color
                          elevation: 3, //elevation of button
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(30)
                          ),
                            padding: EdgeInsets.all(20) //content padding inside button
                        ),
                            onPressed: (){
                              //code to execute when this button is pressed.
                            },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon( // <-- Icon
                                Icons.mail_outline,
                                size: 24.0,
                                color: Colors.black,
                              ),
                              SizedBox(height: 5,),
                              Text('Mail us',style: TextStyle(
                                color: Colors.black,
                              ),), // <-- Text
                              SizedBox(

                              ),

                            ],
                          ),




                        ),

                        ),
                    ],
                  ),

                ],
              )
            ],
          ),
        ) ,
      ),
    );
  }
}
