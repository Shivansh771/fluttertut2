import 'package:flutter/material.dart';

class myTheme {
  static ThemeData  LightTheme(BuildContext context) => ThemeData(primarySwatch: Colors.deepPurple,
  appBarTheme: AppBarTheme(
  color: Colors.white,
  elevation: 0.0,
  iconTheme: IconThemeData(color: Colors.black),
  textTheme:Theme.of(context).textTheme
  ));
  static ThemeData  DarkTheme(BuildContext context) => ThemeData(brightness: Brightness.dark );

  //Colors
  static Color creamColor=Color(0xfff5f5f5);
  static Color darkBlueishColor=Color(0xff403b58);
}