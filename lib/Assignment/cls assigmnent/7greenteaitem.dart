import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class item extends StatelessWidget{
  @override
  final Image img;
  final String txt;
  item({
    Key?key,
    required this.img,
    required this.txt
  }):super(key: key);
  Widget build(BuildContext context) {
    return Container(
      height: 100,width: 100,
      child: Card(
        color: Colors.greenAccent[100],
        child: Column(
          children: [
            img,
            Text(txt,style: TextStyle(color: Colors.green),)
          ],
        ),
      ),
    );

  }

}