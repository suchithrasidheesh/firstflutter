import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: backpress(),
  debugShowCheckedModeBanner: false,
  ));
}


class backpress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool>showdialogpop() async {
      return await showDialog(context: context, builder:(context){
        return  AlertDialog(

            content: Text('Do you want to Exit'),
            actions: [
            TextButton(onPressed: (){
               Navigator.of(context).pop(false);
              }, child:Text('YES')),
            TextButton(onPressed: (){
               Navigator.of(context).pop(true);
              }, child: Text('NO')),
            ]
        );
      });
    }
    return WillPopScope(
      onWillPop:showdialogpop,
      child: Scaffold(
        body: Center(
            child: Text('BackPress')
        ),
      ),
    );
  }

}