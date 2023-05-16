import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/modals/catalog.dart';
import 'package:untitled/utils/routes.dart';
import 'package:untitled/widgets/item_widget.dart';
import 'package:untitled/widgets/themes.dart';

import '../widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/Catalog_List.dart';
import '../widgets/home_widgets/catalog_header.dart';



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
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
    setState(() {});
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cardColor,
      floatingActionButton: FloatingActionButton(onPressed: ()=>Navigator.pushNamed(context, MyRoutes.cartRoute),
        backgroundColor: context.theme.buttonColor,
      child: Icon(CupertinoIcons.cart,
      color: Colors.white,),),
      body:
      SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              catalogHeader(),
              if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                 CircularProgressIndicator().centered().expand(),



            ],
          ),
        ),
      ),
    );
  }
}





