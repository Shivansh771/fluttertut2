import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class myTheme {
  static ThemeData  LightTheme(BuildContext context) => ThemeData(primarySwatch: Colors.deepPurple,
  fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonColor: darkBlueishColor,
  accentColor: Colors.deepPurple,
  appBarTheme: AppBarTheme(
  color: Colors.white,
  elevation: 0.0,
  iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black,fontSize: 24)
  ));
  static ThemeData  DarkTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      brightness: Brightness.dark,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      accentColor: Colors.white,
      buttonColor: lightBluishColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white,fontSize: 24))
      );


  //Colors
  static Color creamColor=Color(0xfff5f5f5);
  static Color darkCreamColor=Vx.gray800;
  static Color darkBlueishColor=Color(0xff403b58);
  static Color lightBluishColor=Vx.indigo500;

}