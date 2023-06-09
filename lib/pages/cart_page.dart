import 'package:flutter/material.dart';
import 'package:untitled/modals/cart.dart';
import 'package:untitled/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.align(TextAlign.center).make(),
      ),
      body: Column(
      children:[
        _CartList().p32().expand(),
        Divider(),
        _CartTotal(),
      ]
      )
      ,
    );
  }
}

class _CartTotal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final _cart=CartModel();
    return SizedBox(
      height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: ["\$ ${_cart.totalPrice}".text.xl4.color(context.theme.accentColor).make(),
        30.widthBox,
        ElevatedButton(onPressed:(){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying not supported yet".text.make()))
        ;},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)
            )
            ,child: "Buy".text.color(Colors.white).make(),).w32(context)],

    ));
  }

}
class _CartList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CartListState();

}

class _CartListState extends State<_CartList>{
  final _cart=CartModel();
 @override
  Widget build(BuildContext context) {
  return _cart.items.isEmpty?"Nothing to Show".text.xl2.makeCentered(): ListView.builder(itemCount:_cart.items?.length,
      itemBuilder: (context,index)=>ListTile(
      leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline_outlined),
          onPressed: (){
            _cart.remove(_cart.items[index]);
            setState(() {

            });
          },
        ),
        title: _cart.items[index].name.text.make(),
  ));
 }

}
