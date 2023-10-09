import 'package:flutter/material.dart';
import 'package:shop/global_variables.dart';
import 'package:shop/pages/product_details_page.dart';


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
    return Padding(
      padding: const EdgeInsets.all(6.0),
      
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>   ProductDetailPage(product: products[0])));
        },
        child: Container(
          padding:const  EdgeInsets.all(10),
          margin: const  EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(216,240,253,1)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: Theme.of(context).textTheme.titleMedium,),
              const SizedBox(height: 8,),
              Text('\$$price',style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: 8,),
              Align(alignment: Alignment.center,
                child: Image.asset(image,height: 175,)
                ),
                
             
                
              
            ],
          ),
        ),
      ),
    );
  }
}