import 'package:firstflutterproject/tab%20bar/tabBarEg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: BottomNavigator(),
  debugShowCheckedModeBanner: false,
  ));
}
class BottomNavigator extends StatefulWidget{
  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  var screen=[
    tabBarEg(),
    Text('Category'),
    Text('Favorite'),
    Text('Cart'),
    Text('Notification'),
  ];
  int index=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title:Text('Bottom Nigation Bar') ,
      ),
      bottomNavigationBar:ClipRRect(borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40)),
        child: BottomNavigationBar(
          selectedItemColor:Colors.blue,
          unselectedItemColor:Colors.black,
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.green,
            onTap:(tapindex){
            setState(() {
              index=tapindex;
            });
            },
            items:[
              BottomNavigationBarItem(icon:Icon(Icons.home), label:'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.category),label:'Category' ),
              BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
              BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: 'Notification'),
            ]
        ),
      ),
      body:screen[index],


    );
  }
}