import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lunch extends StatelessWidget{
  var color=[Colors.green,Colors.red,Colors.blue,Colors.purple,Colors.orange,Colors.blue,Colors.pink,Colors.cyan,];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs:[
            Tab(text:'Lunches',),
            Tab(text: 'Cart',)
          ]),
        ),
        body: TabBarView(
           children: [
          ListView.builder(itemBuilder: (context,index){
            return Row(
              children: [
                Container(
                  height: 80,width: 80,
                  color: color[index],
                  child: Column(
                    children: [
                      Text('1'),
                      Text('Tuesday'),
                    ],
                  ),
                ),
                Container(
                  child:Text('Burger'),
                  )
              ],
            );
          },itemCount:color.length),
             Container(
               color: Colors.cyan,height: double.infinity,width: double.infinity,
             )
        ],
      ),
      ),
    );
  }
}