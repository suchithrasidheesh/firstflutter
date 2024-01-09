import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Register extends StatelessWidget{
  var email=['appu@gmail.com','ammu@gmail.com','minnu@gmail.com','arun@gmail.com','sneha@gmail.com'];
  var title=['APPU K','AMMU CV','MINNU MM','ARUN CP','SNEHA KP'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder:(context,index){
        return Card(
          color:Colors.cyan[100],
                child:ListTile(
                    title: Text(title[index]),
                  subtitle: Text(email[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(onPressed: (){}, child:Text('Edit')),
                      TextButton(onPressed: (){}, child: Text('Delete')),
                    ],
                  ),
                  ),
        );
      },itemCount:title.length)
    );
    }
  }
