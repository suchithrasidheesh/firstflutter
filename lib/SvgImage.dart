import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main(){
  runApp(MaterialApp(home: svgImg(),));
}
class svgImg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SvgPicture.asset('assets/svg/rat.svg'),
      ),
    );
  }
  
}