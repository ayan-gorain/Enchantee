import 'package:enchante/utiles/routes.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Onboardingpage extends StatefulWidget {
  const Onboardingpage({Key? key}) : super(key: key);

  @override
  State<Onboardingpage> createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  final controller=PageController();
  bool isLastPage=false;
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  Widget buildPage({
  required Color color,
    required String title,
  required String urlImage,
  required String subtitle,
})=>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 46,
                fontWeight: FontWeight.bold,
              ),),
            const SizedBox(height: 100),
            Image.asset(urlImage,
            fit: BoxFit.cover,
            width:300),

            const SizedBox(height: 80),

            Container(
              child: Text(subtitle,style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            )],
        ),

      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom:80),
          child: PageView(
            controller: controller,
            onPageChanged: (index){
              setState(() =>isLastPage=index==5);
            },
            children: [

              buildPage(
                color: Colors.white,
                  title: "Services",
                urlImage: 'assets/images/gggo.webp',

                subtitle: "Swipe to know more about our sevices"
              ),buildPage(
                color: Colors.white60,
                  title: "Wash and fold",
                urlImage: 'assets/images/ttt.jpg',

                subtitle: ""
              ),
              buildPage(
                color: Colors.white,
                  title: "Wash and iron",
                urlImage: 'assets/images/r3.webp',

                subtitle: ""
              ),
              buildPage(
                color: Colors.white,
                  title: "Dry Cleaning",
                urlImage: 'assets/images/gyu.webp',

                subtitle: ""
              ),
              buildPage(
                color: Colors.white,
                  title: "Ironing",
                urlImage: 'assets/images/iron.jpg',

                subtitle: ""
              ),
              buildPage(
                color: Colors.white,
                  title: "Stitching",
                urlImage: 'assets/images/st.jpg',

                subtitle: ""
              ),


            ],
          ),
        ),
      ),
        bottomSheet:isLastPage
        ? TextButton(
            style: TextButton.styleFrom(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(5),
              
             ),
                primary:Colors.white,
              backgroundColor: Colors.tealAccent,
              minimumSize: const Size.fromHeight(80)
            ),
            onPressed: () async{
              Navigator.pushNamed(context, Myroutes.welcomeRoute);}, child: const Text("Get Started",
            style:TextStyle(fontSize: 24))):
        Container(
            height:80,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(

                    onPressed: ()=>controller.jumpToPage(5),
                    child: const Text("SKIP")),
        SmoothPageIndicator(
          controller: controller,
          count:6,
          axisDirection: Axis.horizontal,
          effect: JumpingDotEffect(
            dotHeight: 16,
            dotWidth: 16,
            jumpScale: .7,
            verticalOffset: 15,
          ),
          onDotClicked: (index)=>controller.animateToPage(
          index, duration:const  Duration(microseconds: 500), curve: Curves.easeIn),
        ),
                TextButton(onPressed: ()=>controller.nextPage(duration: const Duration(microseconds: 500),
                    curve: Curves.easeInOut), child: const Text("NEXT")),
              ],

            )
        )
    );
  }
}
