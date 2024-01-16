import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridview(),));
}
class Gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 20,crossAxisSpacing: 20),
      children: [
        Container(child: Icon(Icons.camera_alt),color: Colors.cyan,),
        Container(child: Icon(Icons.add_card),color: Colors.greenAccent,),
        Container(child: Icon(Icons.baby_changing_station),color: Colors.yellowAccent,),
        Container(child: Icon(Icons.dangerous),color: Colors.pinkAccent,),
        Container(child: Icon(Icons.edgesensor_high),color: Colors.purpleAccent,),
        Container(child: Icon(Icons.favorite),color: Colors.redAccent,),
        Container(child: Icon(Icons.gamepad),color: Colors.blueAccent,),
        Container(child: Icon(Icons.hail),color: Colors.orangeAccent,),
      ],
      ),
    );
  }
}