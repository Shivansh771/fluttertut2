import 'package:flutter/material.dart';
import 'package:untitled/modals/catalog.dart';
import 'package:untitled/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var days = 2;
    var name = "Shivansh";
    final dummyList=List.generate(40, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
       ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index){
            return ItemWidget(item: dummyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
