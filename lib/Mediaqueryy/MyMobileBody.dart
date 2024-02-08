import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  MyMobileBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.deepPurple[200],
      appBar:AppBar(
        title:Text('MOBILE'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(aspectRatio: 16/9,
              child: Container(
                color: Colors.deepPurple[300],
              ),
              ),
            ),

            Expanded(
              child: ListView.builder(itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height:120,
                    color: Colors.deepPurple[300],
                  ),
                );

              },itemCount:8,),
            )
          ],
        ),
      ),
    );
  }
}