import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/modals/catalog.dart';
import 'package:untitled/widgets/item_widget.dart';
import 'package:untitled/widgets/themes.dart';

import '../widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

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
      backgroundColor: myTheme.creamColor,
      body:
      SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              catalogHeader(),
              if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
                 CircularProgressIndicator().centered().expand(),



            ],
          ),
        ),
      ),
    );
  }
}

class CatalogList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
        itemBuilder: (context, index){
        final catalog= CatalogModel.items[index];
        return CatalogItem(catalog:catalog);
        }
    );
  }
}

class CatalogItem extends StatelessWidget{
  final Item catalog;
  CatalogItem({super.key, required this.catalog} ): assert(catalog!=null);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(image: catalog.image),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
            children: [

              catalog.name.text.lg.color(myTheme.darkBlueishColor).make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              20.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [

                  "\$ ${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(myTheme.darkBlueishColor),
                        shape: MaterialStateProperty.all(StadiumBorder(),)

                      ),

                      child: "Buy".text.make())

                ],
              ).pOnly(right: 8.0)

            ],
          ))
        ],
      )
    ).white.square(150).roundedLg.make().py16();
  }
}
class catalogHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:Column(
      children: [

        "Catalog App".text.xl5.bold.color(myTheme.darkBlueishColor).make(),
        "Trending Products".text.xl2.make()
      ],
    ),

    );
  }
  
}
class CatalogImage extends StatelessWidget{
 final String image;
 const CatalogImage({super.key, required this.image} );
  @override
  Widget build(BuildContext context) {
   return Image.network(image).box.rounded.p16.color(myTheme.creamColor).make().p16().w40(context);

  }
  
}
