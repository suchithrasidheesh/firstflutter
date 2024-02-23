import 'package:flutter/cupertino.dart';

class itemsbookmyshow extends StatelessWidget{
  final Image img;
  final String txt;
  itemsbookmyshow({
    Key?key,
    required this.img,
    required this.txt
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height:90,width: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          img,
          Text(txt)
        ],
      ),
    );
  }

}