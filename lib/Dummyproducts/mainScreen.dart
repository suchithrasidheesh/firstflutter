import 'dart:js';

import 'package:firstflutterproject/Dummyproducts/dummydata.dart';
import 'package:firstflutterproject/Dummyproducts/productDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:MainPage(),
  routes: {
    'secondPage':(context)=>productDetails()
  },
  ));
}
class MainPage extends StatefulWidget{
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:
          dummyProducts.map((Products) => GestureDetector(
            child: Container(
              child: Text("${Products["name"]}"),
            ),
            onTap: ()=>getNote(context,Products["id"]),
          )).toList(),

      ),
    );
  }

  getNote(BuildContext context, product) {
    Navigator.of(context).pushNamed('secondPage',arguments:product);
  }
}