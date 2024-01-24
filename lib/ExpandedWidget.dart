import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ExpandedWidget(),));
}
class ExpandedWidget extends StatelessWidget{
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Container(decoration: BoxDecoration(color:Colors.cyan,borderRadius: BorderRadius.circular(20)),height: 100,width: 100,)),
          Expanded(child: Container(color: Colors.purpleAccent,height: 100,width: 100,)),
          Expanded(child: Container(color: Colors.greenAccent,height: 100,width: 100,)),
        ],
      ),
    );
  }

}