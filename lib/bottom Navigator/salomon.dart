import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main(){
  runApp(MaterialApp(home:salomon(),));
}
class salomon extends StatefulWidget{
  @override
  State<salomon> createState() => _salomonState();
}

class _salomonState extends State<salomon> {
  var screen=[
    Text('Home'),
    Text('Favorite'),
    Text('Search'),
    Text('Person')
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Salomaon Bottom Navigation Bar'),
    ),
    bottomNavigationBar:SalomonBottomBar(
        currentIndex: index,
        backgroundColor:Colors.green,
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
        },
        items:[
          SalomonBottomBarItem(icon:Icon(Icons.home), title:Text('home'),selectedColor:Colors.pink,),
          SalomonBottomBarItem(icon: Icon(Icons.favorite_border), title:Text('Likes'),selectedColor:Colors.cyan),
          SalomonBottomBarItem(icon: Icon(Icons.search), title:Text('search'),selectedColor:Colors.orange),
          SalomonBottomBarItem(icon: Icon(Icons.person), title:Text('Profile'),selectedColor:Colors.teal)

    ]),
    body: screen[index],
  );
  }
}