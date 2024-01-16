import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Lunch.dart';

void main(){
  runApp(MaterialApp(home:TabandBottom(),));
}
class TabandBottom extends StatefulWidget{
  @override
  State<TabandBottom> createState() => _TabandBottomState();
}

class _TabandBottomState extends State<TabandBottom> {
  var screen=[
    Text('Home'),
    Lunch(),
    Text('cart'),
    Text('Account')
  ];

  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom and Tab Bar'),
      ),
      bottomNavigationBar:BottomNavigationBar(
        type:BottomNavigationBarType.shifting,
          selectedItemColor: Colors.blue,
          currentIndex:index,
          onTap:(tapindex){
          setState(() {
            index=tapindex;
          });
          },
          items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.cyan),
        BottomNavigationBarItem(icon:Icon(Icons.lunch_dining),label: 'Lunches'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.account_box),label: 'Account')
      ]),
        body:screen[index],
    );
  }
}