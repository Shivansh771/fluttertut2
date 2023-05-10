import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var days = 2;
    var name = "Shivansh";

    return Scaffold(
      appBar: AppBar(
       ),
      body: Center(
        child: Container(child: Text("Welcome $days by $name")),
      ),
      drawer: MyDrawer(),
    );
  }
}
