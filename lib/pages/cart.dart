import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/pages/cart_provider.dart';


class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final cart =context.watch<CartProvider>().cart;
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
              subtitle: Text(cartItem['size'].toString() ),
              trailing: IconButton(iconSize: 29,
                onPressed: (){
               showDialog(context: context, builder: (context)
               {
                return   AlertDialog(
                  title:  const Text("Remove Product",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ),),
                  content:const  Text("Are you sure you want to remove the product from the cart"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child:const  Text('No',style: TextStyle(color: Colors.blue),)),
                     TextButton(onPressed: (){
                      context.read<CartProvider>().removeProduct(cartItem);
                     
                        Navigator.of(context).pop();

                     }, child:const  Text('Yes',style: TextStyle(color: Colors.red),
                     
                     ),

                     )

                  ],

                );
                });
                }, icon:  Icon(Icons.delete,color: Colors.red.shade400,)),
                
      
            );
      
          }
          ),
      )
    );
  }
}