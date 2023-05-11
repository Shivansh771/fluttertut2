import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/home_detail_page.dart';
import 'package:untitled/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../modals/catalog.dart';

import 'Catalog_Image.dart';

class CatalogList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index){
          final catalog= CatalogModel.items[index];
          return InkWell(child: CatalogItem(catalog:catalog),
          onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeDetailsPage(catalog: catalog))),);
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
            Hero(
              tag: Key(catalog.id.toString()),
                child: CatalogImage(image: catalog.image)),
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