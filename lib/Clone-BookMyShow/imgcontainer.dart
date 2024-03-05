import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imgcontainer extends StatelessWidget{
  final Color clr;
  final Image img;
  final String txt;
  final String txt1;
  imgcontainer({
    Key?key,
    required this.clr,
    required this.img,
    required this.txt,
    required this.txt1,

  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect( borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 100,width: 150,color: clr,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:30,left: 80),
              child: img,
            ),
            Padding(
              padding: const EdgeInsets.only(top:20,left:5 ),
              child: Text(txt,style: TextStyle(fontSize:15,color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70,left:5),
              child: Text(txt1,style: TextStyle(fontSize:10,color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }

}