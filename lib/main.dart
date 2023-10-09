import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/pages/cart_provider.dart';
import 'package:shop/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(

      create: (context) {return CartProvider();},
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
           
            colorScheme: ColorScheme.fromSeed(seedColor: const  Color.fromRGBO(254, 206, 1, 1)),
            primaryColor: const  Color.fromRGBO(254, 206, 1, 1),
            textTheme:const  TextTheme(
              titleLarge: TextStyle(
                            fontFamily: 'ankit',
                            fontWeight: FontWeight.bold,
                            fontSize: 32),
              titleMedium: TextStyle( fontWeight: FontWeight.bold,fontSize: 23 ),
              bodySmall: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
      
            ),
            useMaterial3: true,
          ),
          home : const  Homepage(),
        
      ),
    );
  }
}




