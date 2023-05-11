import 'package:flutter/material.dart';
import 'package:untitled/pages/homepage.dart';

import 'package:untitled/pages/login_page.dart';
import 'package:untitled/utils/routes.dart';
import 'package:untitled/widgets/themes.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    bringVegetables(thaila: true, rupees: 100);
    bool isMale = true;
    //num can take both int and double
    num n = 22;
    var day = "tuesday";

    const pi = 3.14;

    //compiler decides the data type
    String name = "Shivansh";
    return MaterialApp(
      theme: myTheme.LightTheme(context),
      darkTheme: myTheme.DarkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => loginPage()
      },
    );
  }

  bringVegetables({@required bool thaila: false, int rupees = 100}) {
    //by default it takes the value of 100
  }
}
