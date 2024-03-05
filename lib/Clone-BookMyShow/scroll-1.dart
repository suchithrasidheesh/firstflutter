import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class scroll1 extends StatelessWidget{
  final Image img;

  scroll1({
    Key?key,
    required this.img,
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius:BorderRadius.circular(10),
      child: Container(
        height: 150,width:100,
        child:Column(
          children:[
            Expanded(child: img),
          ],
        )
      ),
    );
  }

}