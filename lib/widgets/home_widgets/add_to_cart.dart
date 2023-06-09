import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../modals/cart.dart';
import '../../modals/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({
    super.key,
    required this.catalog,
  }) ;

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog)?true:false;

    return ElevatedButton(
      onPressed: () {
        isInCart = isInCart.toggle();
        if(!isInCart){
          final _catalog = CatalogModel();

          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {});}
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_fill),
    );
  }
}
