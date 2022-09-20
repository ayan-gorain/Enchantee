import 'package:flutter/material.dart';

class Product{
   final String name;
   final double price;
   final  String imageUrl;

   const Product({required this.name,required this.price,required this.imageUrl});


   static const List<Product> products=[
      Product(name: 'T-Shirt',
          price: 10,
          imageUrl: 'https://freesvg.org/img/Azure_T-Shirt.png'),
      Product(name: 'Shirt',
          price: 10,
          imageUrl: 'https://previews.123rf.com/images/rubynurbaidi/rubynurbaidi1812/rubynurbaidi181200005/117626938-shirt-cartoon.jpg?fj=1'),
      Product(name: 'Formal Pant',
          price: 10,
          imageUrl: 'https://www.pngitem.com/pimgs/m/233-2336447_suit-trousers-brioni-grey-pants-hd-png-download.png'),
Product(name: 'Jeans Pant',
          price: 10,
          imageUrl: 'https://thumbs.dreamstime.com/b/vector-single-cartoon-illustration-ripped-denim-jeans-pants-vector-cartoon-illustration-ripped-denim-jeans-pants-124274501.jpg'),
Product(name: 'Blazer',
          price: 10,
          imageUrl: 'https://png.pngtree.com/element_our/20190528/ourlarge/pngtree-red-hand-painted-blazer-image_1184703.jpg'),
Product(name: 'Saree',
          price: 10,
          imageUrl: 'https://us.123rf.com/450wm/yekaterinalim/yekaterinalim2007/yekaterinalim200701521/152022136-indian-sari-indian-dress-vector-illustration.jpg?ver=6'),
Product(name: 'Fasion Dress',
          price: 10,
          imageUrl: 'https://www.kindpng.com/picc/m/274-2741727_suit-clipart-salwar-black-dress-clip-art-hd.png'),



   ];
}