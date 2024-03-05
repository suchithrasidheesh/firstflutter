import 'package:firstflutterproject/EgSQFLITE/UserData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DBHome2 extends StatelessWidget{
  final data1;
  DBHome2({
    Key?key,
    required this.data1,
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    var name=data1[0]['name'];
    var email=data1[0]['email'];
    if(data1==null){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('NoData')));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome $name,\n $email'),
      ),
      body: UserData(),
    );
  }

}