import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridvieweg(),));
}
class Gridvieweg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: [
        Container(
          child: Column(
            children: [
              Image(image: AssetImage('assets/Icons/house.png'),width: 300,height: 60,),
              Text('Home')
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image(image: AssetImage('assets/Icons/house.png'),width: 300,height: 60,),
              Text('Home')
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image(image: AssetImage('assets/Icons/house.png'),width: 300,height: 60,),
              Text('Home')
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image(image: AssetImage('assets/Icons/house.png'),width: 300,height: 60,),
              Text('Home')
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image(image: AssetImage('assets/Icons/house.png'),width: 300,height: 60,),
              Text('Home')
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Image(image: AssetImage('assets/Icons/house.png'),width: 300,height: 60,),
              Text('Home')
            ],
          ),
        )
      ],
      ),
    );
  }

}