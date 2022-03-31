import 'package:flutter/material.dart';
import 'package:lavaca/information/product_information.dart';

class ListProduct extends StatelessWidget {
  final listProducts = InformationProduct();
  @override
  Widget build(BuildContext context) {
    listProducts.fillProduct();
    return Scaffold(
      body: Container(
          child: ListView.builder(
              itemCount: listProducts.myList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.list),
                  trailing: Text(
                    listProducts.myList[index].amount.toString() +
                        " " +
                        listProducts.myList[index].unityType,
                    style: TextStyle(fontSize: 15),
                  ),
                  title: Text(
                    listProducts.myList[index].productName,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                );
              })),
    );
  }
}
