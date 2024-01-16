import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mysplash(),
    )
  );
}

class Mysplash extends StatefulWidget{
  @override
  State<Mysplash> createState() => _MysplashState();
}

class _MysplashState extends State<Mysplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Login()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,foregroundColor: Colors.redAccent,
        title: Center(child: Text('Sample page')),
      ),
      body: Container(height: double.infinity,width: double.infinity,color: Colors.yellowAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/Icons/fb icon.png')),
            Text("FLUTTER",style: TextStyle(fontSize: 50,color: Colors.green),)
          ],
        ),
      ),
    );

  }
}