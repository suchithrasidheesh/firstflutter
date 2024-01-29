import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget{
  final String txt;
  Item({
    Key?key,
    required this.txt
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top:20,left: 20),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white,side: BorderSide(color:Colors.greenAccent,width: 1)),
            onPressed:(){},
            child:Text(txt,style: TextStyle(color: Colors.green),)),
      ),
    );

  }

}