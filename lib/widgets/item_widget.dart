import 'package:flutter/material.dart';
import 'package:untitled/modals/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      shape: StadiumBorder(),
      elevation: 0.5,
      child: ListTile(
        onTap: (){
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$ ${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.deepPurple,
          fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
