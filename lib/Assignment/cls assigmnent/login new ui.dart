import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:NewUi(),));
}
class NewUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height:double.infinity,width:double.infinity,
          ),
          Positioned(height: 200,width: 500,
              child: ClipRRect(borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150,),bottomRight: Radius.circular(150)),
                  child: Container(color:Colors.blue,
                  child: Image(image:AssetImage('assets/Icons/hotel1.png'),height: 100,width: 300,),
                  ))),
        ],
      ),
    );
  }
  
}