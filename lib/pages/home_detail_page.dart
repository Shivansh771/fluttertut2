import 'package:flutter/material.dart';
import 'package:untitled/modals/catalog.dart';
import 'package:untitled/widgets/home_widgets/add_to_cart.dart';
import 'package:untitled/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget{

  final Item catalog;
  const HomeDetailsPage({super.key, required this.catalog}) : assert(catalog != null);
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(catalog: catalog).wh(130, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(context.accentColor)
                            .bold
                            .make(),
                        catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                        10.heightBox,
                        "Lorem ipsum gemera eta df aklfjasdk lfh asfialskdj hfasdo uhfuioa s klsad fh jklasd hfil asdhfalshjlk asjf asjkl fhasljkhfajlsk".text.textStyle(context.captionStyle).xl.make().p16()
                      ],
                    ).py64(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}