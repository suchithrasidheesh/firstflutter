import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget{
  var title=['P','J','R','S','A'];
  var name=['Pppp','Jjjj','Rrrr','Ssss','Aaaa'];
  var email=['a@gmail.com','J@gmail.com','R@gamil.com','S2a@gmail.com','Asd@gamil.com'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder:(context,index) {
      return ListTile(
        leading:CircleAvatar(
          backgroundColor: Colors.greenAccent,
          child:Text(title[index]),
        ),
        title: Text(name[index]),
        subtitle: Text(email[index]),
      );
    },itemCount:title.length,);


  }

}