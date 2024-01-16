import 'package:flutter/material.dart';

class chatWhatsApp extends StatelessWidget{
  var alpha=['A','B','C','D','E','F','G','H'];
  var title=['Arun','Bala','Charu','Dhanya','Ebraham','Fasil','Geethu','Hari'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.green,
          child:Text(alpha[index]),
        ),
        title:Text(title[index]) ,
      );
    },itemCount: alpha.length,);
  }

}