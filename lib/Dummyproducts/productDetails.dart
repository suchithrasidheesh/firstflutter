import 'package:firstflutterproject/Dummyproducts/dummydata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class productDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id =ModalRoute.of(context)?.settings.arguments;
    final product = dummyProducts.firstWhere((prodct) => prodct["id"]==id);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 100,width: 100,
            child: Image(image: NetworkImage(product["image"]),),
          ),
          Text(product["name"]),
          Text(product['description']),
          Text(product["price"])
        ],
      ),
    );
  }
  
}