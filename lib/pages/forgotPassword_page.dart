import 'package:flutter/material.dart';
class Forgotpasswordpage extends StatelessWidget {
  const Forgotpasswordpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height:MediaQuery.of(context).size.height,
          width:double.infinity,
          child: Column(
              children:<Widget>[
                AppBar(
                  title: Text(''),// You can add title here
                  leading: new IconButton(
                    icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  backgroundColor: Colors.white.withOpacity(0.3), //You can make this transparent
                  elevation: 0.0, //No shadow
                ),
                SizedBox(height:20),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Forgot Password",
                      style: TextStyle(
                          inherit: true,
                          fontSize: 45,
                          color: Colors.black,
                          fontWeight: FontWeight.w800)),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset("assets/images/for.png", fit: BoxFit.cover,),
                ),

                Text("Did someone forgot the password?",
                      style: TextStyle(
                          inherit: true,
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                SizedBox(height: 10,),
                Text("That's ok",
                      style: TextStyle(
                        inherit: true,
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300)),
                SizedBox(height: 5,),
                Text("Just enter the email address you've ",
                      style: TextStyle(
                        inherit: true,
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300)),
                Text("used to  signups with us and  ",
                      style: TextStyle(
                        inherit: true,
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300)),
                Text("we'wll send you a reset link!",
                      style: TextStyle(
                        inherit: true,
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300)),
                SizedBox(height: 20,),
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
                const SizedBox(height:40),
                MaterialButton(
                  minWidth: 200,
                  height: 50,
                  onPressed: () {
                    //Navigator.pushNamed(context, Myroutes.open2Route);
                  },
                  color: Colors.yellowAccent,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(60)),
                  child: Text("Submit",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),

              ],
          ),
        ),
      ),
    );
  }
}
