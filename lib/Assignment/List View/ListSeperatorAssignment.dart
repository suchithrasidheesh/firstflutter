import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListSeperatorAssignment(),
  ));
}
class ListSeperatorAssignment extends StatelessWidget {
  var colors = [
    Colors.brown,
    Colors.blueAccent,
    Colors.purpleAccent,
    Colors.pinkAccent,
    Colors.yellowAccent,
    Colors.redAccent,
    Colors.cyanAccent,
    Colors.deepOrangeAccent,
    Colors.lightGreenAccent,
    Colors.limeAccent
  ];
  var title = [
    'Listitem1',
    'Listitem2',
    'Listitem3',
    'Listitem4',
    'Listitem5',
    'Listitem6',
    'Listitem7',
    'Listitem8',
    'Listitem9',
    'Listitem10'
  ];
  var title1 = [
    'seperator1',
    'seperator2',
    'seperator3',
    'seperator4',
    'seperator5',
    'seperator6',
    'seperator7',
    'seperator8',
    'seperator9',
    'seperator10'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Listview.seperated()'),
        ),
        body: ListView.separated(itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: colors[index],
            child: ListTile(
              title: Text('${title[index]}'),
            ),
          );
        }, separatorBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: colors[index],
            child: Text('${title1[index]}'),
          );
        }, itemCount: title.length)
    );
  }
}