import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Stack2Eg(),
    debugShowCheckedModeBanner: false,
  ));
}
class Stack2Eg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white,height: double.infinity,width: double.infinity,),

        ],
      ),
    );
  }

}