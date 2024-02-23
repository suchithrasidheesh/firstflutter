import 'dart:async';

import 'package:flutter/material.dart';

import 'DBLogin-SignUP.dart';

void main(){
  runApp(MaterialApp(home: DBSplash(),
  debugShowCheckedModeBanner: false,
  ));
}
class DBSplash extends StatefulWidget{
  @override
  State<DBSplash> createState() => _DBSplashState();
}

class _DBSplashState extends State<DBSplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:2), () {
      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>DBLoginSignUp()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Center(child: Text('DATABASE EXAMPLE')),
      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/Icons/DBimage.png'),fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image(image: AssetImage('assets/Icons/DBicon.png'),height: 100,width: 100,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text('WELCOME',style: TextStyle(fontSize: 40,color: Colors.pink),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
