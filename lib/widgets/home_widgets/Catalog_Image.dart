import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
class CatalogImage extends StatelessWidget{
  final String image;
  const CatalogImage({super.key, required this.image} );
  @override
  Widget build(BuildContext context) {
    return Image.network(image).box.rounded.p16.color(myTheme.creamColor).make().p16().w40(context);

  }

}