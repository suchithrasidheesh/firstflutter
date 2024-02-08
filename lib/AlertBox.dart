import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:AlertBox(),));
}
class AlertBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed:(){
          showDialog(context: context, builder:(context){
            return AlertDialog(
              title: Text('EXIT'),
              content: Text('Do you want to Exit'),
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child:Text('YES')),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text('NO')),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text('CANCEL'))
              ],
            );
          });
        }, child:Text('ALERT')),
      ),
    );
  }

}