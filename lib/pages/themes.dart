import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    fontFamily: 'ankit',
   
    colorScheme: ColorScheme.fromSeed(seedColor: const  Color.fromRGBO(254, 206, 1, 1)),
    
    
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
          iconTheme: IconThemeData(color: Colors.black)));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      
      fontFamily: 'ankit',
      textTheme: Theme.of(context).textTheme,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          actionsIconTheme: IconThemeData(
            
            color: Colors.white,
          ),
          iconTheme: IconThemeData(color: Colors.white)));
  static Color creamecolor = const Color(0xfff5f5f5);
  static Color darkcreamecolor = Colors.grey;
  static Color darkbluishColor = const Color(0xff403b58);
  static Color lightbluishColor = Colors.indigo.shade500;
}





