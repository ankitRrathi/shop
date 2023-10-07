import 'package:flutter/material.dart';


class Product extends StatelessWidget {
  final String title;
  final double price;
  final String image;

  const Product({super.key,
  required this.title,
  required this.price,
  required this.image
  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(),
      child: Column(
        children: [
          Text(title),
          const SizedBox(height: 10,),
          Text('\$$price'),
          const SizedBox(height: 10,),
          Image.asset(image,width: double.infinity,height: 200,)
          
        ],
      ),
    );
  }
}