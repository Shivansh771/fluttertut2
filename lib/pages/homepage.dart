import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var days = 2;
    var name = "Shivansh";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(child: Text("Welcome $days by $name")),
      ),
      drawer: Drawer(),
    );
  }
}
