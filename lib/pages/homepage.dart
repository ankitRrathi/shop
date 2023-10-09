import 'package:flutter/material.dart';
import 'package:shop/pages/cart.dart';
import 'package:shop/pages/product_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentPage = 0;
  List<Widget> pages = const [ 
    ProductList(),
    CartPage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: currentPage,
        onTap: (value){
         setState(() {
            currentPage =value;
         });

        },
        selectedFontSize: 0,
        unselectedFontSize: 0,
        
        items:const  [
           BottomNavigationBarItem(label: '',
            icon: Icon(Icons.home,size: 35,)),
           BottomNavigationBarItem( label: '',
            icon: Icon(
              Icons.shopping_bag,size :35)),

        ]
        ),
    );
    
  }
}
