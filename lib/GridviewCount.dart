import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListviewCount(),));

}
class ListviewCount extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
      children: List.generate(8, (index) {
        return Card(
          child: Column(
            children: [
              Icon(Icons.camera_alt),
              Text('Flutter')
            ],
          ),
        );
    },),
    )
    );
  }

}