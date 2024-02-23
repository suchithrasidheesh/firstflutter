import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
import 'Registration.dart';

class DBLoginSignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,width: double.infinity,
        color: Colors.purpleAccent,
             child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               ElevatedButton(onPressed:(){
                 Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>DBLogin()));
                }, child:Text('Login')),
               SizedBox(width: 50,),
               ElevatedButton(onPressed:(){
                 Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Registration()));
                }, child:Text('SignUp')),
             ],),


       ),


    );
  }
  
}