import 'package:flutter/cupertino.dart';

class fdcontainer extends StatelessWidget{
  final Color clor;
  final Image img;
  fdcontainer({
    Key?key,
    required this.clor,
    required this.img
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect( borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 60,width: 80,
        color: clor,
        child:Center(child: img),
      ),
    );
  }

}