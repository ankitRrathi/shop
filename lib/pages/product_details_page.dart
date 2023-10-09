import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final Map<String, Object> product;
  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int selectedSize = 0;
  
  @override
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Detail',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Column(
        children: [
          Text(
            widget.product['title'] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        const   Spacer(),
          Image.asset(widget.product['imageUrl'] as String),
          const Spacer(flex: 1,),
          Container(
            height: 230,
            decoration:const BoxDecoration(
                color: Color.fromRGBO(155, 187, 218, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                ),
                
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                     const  SizedBox(height: 5,),
                      Text('\$${widget.product['price']}',style: Theme.of(context).textTheme.titleLarge,),
                      const SizedBox(height: 5,),
                      SizedBox(height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: (widget.product['sizes']!as List<int>).length,
                          
                          itemBuilder: (context,index){
                            final size = (widget.product['sizes']! as List<int>)[index];
                            return Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectedSize =size;
                                  });
                                },
                                child: Chip(
                                 backgroundColor: selectedSize ==size ?Theme.of(context).primaryColor : const Color.fromRGBO(245, 247, 249, 1),
                                  elevation: 1,
                                  label: Text(size.toString())),
                              ),
                            );
                        
                          }),
                      ),
                     
                      ElevatedButton(style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        minimumSize: const Size(double.infinity, 50)
                      ),
                        onPressed: (){}, child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           const  Icon(CupertinoIcons.cart,color: Colors.black,),
                         const   SizedBox(width: 15,),
                            Text("Add to cart",style: Theme.of(context,).textTheme.bodySmall,),
                          ],
                        ))
                    ],
                  ),
                ),
          )
        ],
      ),
    );
  }
}
