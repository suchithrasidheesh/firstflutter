import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class items extends StatelessWidget {
  @override
  final Image img;
  final String txt;

  items({
    Key?key,
    required this.img,
    required this.txt,
  }) :super(key: key);

  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadius.circular(20),
        child: Container(height: 120,width: 110,
              child: Card(color: Colors.lightGreen,
                child: Stack(
                        children:[
                         Positioned( top:10,left: 10,
                           child: Column(
                             children: [
                                 img,
                                 Text(txt,style: TextStyle(color: Colors.white),)
                             ],),
                         ),
                      ]),
              ),

               ),
            );
  }

}