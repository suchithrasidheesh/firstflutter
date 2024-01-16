import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Calls.dart';

void main(){
  runApp(MaterialApp(home:tabBarEg(),));
}
class tabBarEg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title:Text('Tabs Demo'),
          bottom:TabBar(
            indicatorColor: Colors.red,
              labelColor: Colors.yellow,
              tabs: [
            Tab(
              icon:Icon(Icons.call_made_sharp),
              text:'Calls',
            ),
            Tab(
              icon: Icon(Icons.call_missed_sharp),
              text: 'Missed',
            ),
            Tab(
              icon: Icon(Icons.call_received_sharp),
              text: 'Received',
            )
              ]) ,
        ),
        body: TabBarView(
          children: [
            Calls(),
            Calls(),
            Calls(),
          ],

        ),
      ),
    );
  }

}