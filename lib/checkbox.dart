import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: CheckBox(),));
}
class CheckBox extends StatefulWidget{
  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool val=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Checkbox(checkColor:Colors.blue,
          activeColor: Colors.red,
          value:val, onChanged:(bool? value){
        setState(() {
          if(val){
            val=false;
          }
          else{
            val=true;
          }

        });

      }),
    );
  }
}