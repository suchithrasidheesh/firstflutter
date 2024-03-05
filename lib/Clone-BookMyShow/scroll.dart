import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scroll extends StatelessWidget{
  final Image img;
  final String txt;
  scroll({
    Key?key,
    required this.img,
    required this.txt
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,width: double.infinity,
        ),
        img,
        Padding(
          padding: const EdgeInsets.only(top:150,left: 70),
          child: ElevatedButton(onPressed:(){}, child:Text(txt)),
        ),
      ],
    );
  }

}