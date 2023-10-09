import 'package:flutter/material.dart';
import 'package:shop/global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const  Text('Cart'),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(itemCount: cart.length,
          itemBuilder: (context,index)
          {
            final cartItem =cart[index];
            return ListTile(
              leading:  CircleAvatar(radius: 35,
                backgroundImage: AssetImage(cartItem['imageUrl']as String, ),
              ),
              title: Text(cartItem['title']as String),
              subtitle: Text(cartItem['company']as String),
              trailing: IconButton(iconSize: 29,
                onPressed: (){}, icon:  Icon(Icons.delete,color: Colors.red.shade400,)),
      
            );
      
          }
          ),
      )
    );
  }
}