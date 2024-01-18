import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: StackEg(),));
}
class StackEg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(color: Colors.cyan,height: 300,width: 300,),
            Positioned(child: Container(color: Colors.pink),left: 40,top: 40,height: 100,width: 100,),
            Positioned(child: Container(color: Colors.purpleAccent,),left: 180,top: 40,height: 100,width: 100,)
          ],
        ),
      ),
    );
  }

}