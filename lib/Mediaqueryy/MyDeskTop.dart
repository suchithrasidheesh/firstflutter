import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDeskTop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DESKTOP'),
      ),
      body:Row(
        children: [
          Expanded(
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(aspectRatio: 16/6,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.deepPurple[400],
                    ),),
                  ),
                  Expanded(
                    child: ListView.builder(itemBuilder: (context,index){
                      return  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          color: Colors.deepPurple[300],
                        ),
                      );
                    },itemCount: 8,),
                  ),
                  ],
              )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              color: Colors.deepPurple[300],
            ),
          )

        ],
      ),
    );
  }
}