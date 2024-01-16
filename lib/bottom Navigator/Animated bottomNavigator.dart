import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:firstflutterproject/Assignment/bottom%20navigator/Lunch.dart';
import 'package:firstflutterproject/tab%20bar/tabBarEg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: AnimatedBottomNav(),));
}
class AnimatedBottomNav extends StatefulWidget{
  @override
  State<AnimatedBottomNav> createState() => _AnimatedBottomNavState();
}

class _AnimatedBottomNavState extends State<AnimatedBottomNav> {
  @override
  var screen=[
    Text('home'),
    Lunch(),
    Text('dssssssf'),
    Lunch(),
  ];
  final iconss=<IconData>[
    Icons.home,
    Icons.notification_add,
    Icons.person,
    Icons.add_shopping_cart_outlined
  ];

  int  index=0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Bottom Navigation'),
      ),
      bottomNavigationBar:AnimatedBottomNavigationBar(icons:iconss, activeIndex:index,
          gapLocation: GapLocation.center,
          backgroundColor: Colors.cyanAccent,
          notchSmoothness: NotchSmoothness.defaultEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap:(tapindex){
         setState(() {
         index=tapindex;
       });}
    ),
      body:screen[index],
      floatingActionButton: FloatingActionButton(
        child:CircleAvatar(backgroundImage:AssetImage('assets/Icons/8.png'),),
        onPressed: (){
          Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>tabBarEg()));
        },
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,

    );
  }
}