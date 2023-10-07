

import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
   Homepage({super.key});
  final List<String> labels = ['All','Adidas','Nike','Puma','Reebok'];

  @override
  Widget build(BuildContext context) {
    return const   Scaffold(
     body : SafeArea(
       child: Column(
        children: [
          Row(
            children: [
              Text('Shoes\nCollection',style: TextStyle(fontFamily: 'ankit',fontWeight: FontWeight.bold,fontSize: 35),),
              Expanded(child: 
              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle:   TextStyle(fontFamily: 'ankit',fontWeight: FontWeight.bold),
                      prefixIcon:  Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderSide:  BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:  BorderSide(
                      color: Colors.black
                      ,width: 2
                    ),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),

                  ),
              
                ),
              ),
              ),
            
            ],
          ),

        ],
     
       ),
     ),
     );
    
  }
}