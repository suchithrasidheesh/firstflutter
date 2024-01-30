import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main(){
runApp(MaterialApp(home: Liquidswipe(),));
}
class Liquidswipe extends StatelessWidget{
  @override
  final page=[
    Container(
      color: Colors.brown[100],
      child:Column(
            children: [
              Text('WELCOME TO LIQUIDSWIPE',
                style: TextStyle(color: Colors.purple,fontSize:30,fontWeight: FontWeight.bold),),
              Image.asset('assets/Icons/LQ.png'),
            ],
         ) 
      
    ),
    Container(
      color: Colors.purpleAccent,
       child: Column(
          children: [
            Image.asset('assets/Icons/LQ1.png'),
          ],
        )
    ),
    Container(
      child: Column(
        children: [
          SvgPicture.asset('assets/svg/book.svg',width: 100,height: 100,),
          Image.asset('assets/Icons/wel.png')
        ],
      ),
    )
  ];
  Widget build(BuildContext context) {
  return Scaffold(
    body: LiquidSwipe(
        pages: page,
        enableLoop: false,
        slideIconWidget: Icon(Icons.arrow_back_ios),
    ),
  );
  }
}