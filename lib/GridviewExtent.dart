import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridviewExtend(),));
}
class GridviewExtend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent:120,
      children: List.generate(8, (index){
        return Card(
          child: Column(
            children: [
              Icon(Icons.ac_unit_sharp),
              Text('Flutter')
            ],
          ),
        );
      }),
      ),
    );
  }

}