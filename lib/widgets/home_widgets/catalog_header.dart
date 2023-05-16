import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class catalogHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:Column(
        children: [

          "Catalog App".text.xl5.bold.color(context.theme.accentColor).make(),
          "Trending Products".text.xl2.make()
        ],
      ),

    );
  }

}