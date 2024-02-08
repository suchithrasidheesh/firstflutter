



import 'package:firstflutterproject/Login/NewReg.dart';
import 'package:flutter/material.dart';
import 'Login/Login.dart';

void main(){
  runApp(MaterialApp(
    home: Namedroots(),
    routes: {
      'loginpage':(context)=>Login(),
      'homepage':(context)=>NewReg(),
    },
  ));
}
class Namedroots extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed:(){
            Navigator.of(context).pushNamed('loginpage');
          }, child: Text('Loginpage')),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed('homepage');
          }, child:Text('Home'))
        ],
      ),
    );
  }

}