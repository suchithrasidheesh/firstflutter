import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cart extends StatelessWidget{
  @override
  final Image img;
  cart({
    Key?key,
    required this.img,
  }):super(key: key);
  Widget build(BuildContext context) {
    return Container(
      height: 100,width: 100,
      child: Card(
        color: Colors.green,
        child: img,
      ),
    );
  }

}