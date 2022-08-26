import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
class ProductlistPage extends StatefulWidget {
  const ProductlistPage({Key? key}) : super(key: key);

  @override
  State<ProductlistPage> createState() => _ProductlistPageState();
}

class _ProductlistPageState extends State<ProductlistPage> {
  List<String>productName=['Shirt','T shirt','Formalpant','Jeans','Blazer','Saree'];
  List<String>productUnit=['Rupee','Rupee','Rupee','Rupee','Rupee','Rupee'];
  List<String>productPrice=['10','11','10','15','25','66'];
  List<String>productImage=[
    "assets/images/shirt.png",
    "assets/images/t-shirt.png",
    "assets/images/pants.png",
    "assets/images/jeans.png",
    "assets/images/blazer.png",
    "assets/images/sari.png",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product list"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
        actions: [
          Center(
            child: Badge(
              badgeContent: Text('0',style: TextStyle(color: Colors.white),),
              animationDuration: Duration(milliseconds: 300),
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body:Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: productName.length,
              itemBuilder: (context,index){
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment:CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image(
                            height:100,
                            width:80,
                            image: AssetImage(productImage[index].toString())),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text(productName[index].toString(),
                                style:TextStyle(fontSize: 16,fontWeight:FontWeight.w500) ,),
                              SizedBox(height: 5,),
                              Text(productUnit[index].toString()+"  "+productPrice[index].toString(),
                                style:TextStyle(fontSize: 16,fontWeight:FontWeight.w500) ,),
                              SizedBox(width: 10,),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(child: Text('Add to cart',style: TextStyle(color: Colors.white),)),
                                ),
                              )
                            ],

                          ),
                        ),
                        

                      ],
                    )
                  ],
                ),
              ),

            );
          }))
        ],
      ) ,
    );
  }
}
