import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Login'),
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.close),
          Icon(Icons.backup)
        ],
      ),
    );
  }
  
}