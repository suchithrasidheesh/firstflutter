import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listdelegate(),));
}
class Listdelegate extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildListDelegate([
        Card(
          child: ListTile(
            tileColor: Colors.cyan,
              leading: Image(image: AssetImage('assets/Icons/home.png'),),
            title: Text('Arun'),
            subtitle: Text('123124235325'),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(
          child: ListTile(
            tileColor: Colors.pinkAccent,
            leading: Image(image: AssetImage('assets/Icons/home.png'),),
            title: Text('Arun'),
            subtitle: Text('123124235325'),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(
          child: ListTile(
            tileColor: Colors.purpleAccent,
            leading: Image(image: AssetImage('assets/Icons/home.png'),),
            title: Text('Arun'),
            subtitle: Text('123124235325'),
            trailing: Icon(Icons.call),
          ),
        )
      ]

      ),),
    );
  }
}