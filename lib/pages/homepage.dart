import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/modals/catalog.dart';
import 'package:untitled/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
    await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
   CatalogModel.items=List.from(productsData)
        .map<Item>((item)=>Item.fromMap(item))
    .toList();
   setState(() {});
   setState(() {

   });
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",
        style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:(CatalogModel!=null && CatalogModel.items.isNotEmpty)?ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) =>
            ItemWidget(
              item: CatalogModel.items[index],
            ),
        ):const Center(
          child: CircularProgressIndicator(),
        )
        ),

      drawer: MyDrawer(),
    );
  }
}