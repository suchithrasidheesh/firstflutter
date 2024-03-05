import 'package:flutter/cupertino.dart';

class events extends StatelessWidget{
  final Image img;
  final String txt;
  final String txt1;
  final String txt2;
  events({
    Key?key, 
    required this.img, 
    required this.txt, 
    required this.txt1, 
    required this.txt2
  }):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Container(height:200,width: 100,
                child: img)),
        Text(txt,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        Text(txt1),
        Text(txt2,style: TextStyle(fontSize: 10),)
      ],
    );
  }
  
}