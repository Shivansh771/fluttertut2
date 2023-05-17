

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/modals/cart.dart';
import 'package:untitled/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../modals/catalog.dart';

import 'Catalog_Image.dart';
import 'add_to_cart.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
            child: CatalogItem(catalog: catalog),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        HomeDetailsPage(catalog: CatalogModel.items[index]))),
          );
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  CatalogItem({super.key, required this.catalog}) : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(context.accentColor).make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            20.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$ ${catalog.price}".text.bold.xl.make(),
               AddToCart(catalog: catalog,)
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).color(context.cardColor).square(150).roundedLg.make().py16();
  }
}

