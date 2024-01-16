import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridviewCustom(),));
}
class GridviewCustom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate: SliverChildBuilderDelegate((context, index){
            return Card(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/Icons/home.png'),height: 80,width: 40,),
                  Text('Home'),
                ],
              ),
            );
          },childCount:8)),
    );
  }

}