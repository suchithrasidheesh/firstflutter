import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
List<String>list=<String>['one','two','three','four'];
void main(){
  runApp(MaterialApp(home:DropDown(),));
}
class DropDown extends StatefulWidget{
  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue=list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_downward),
            elevation: 2,
            underline: Container(
              height: 2,
              color: Colors.cyan,
            ),
            style: TextStyle(color:Colors.deepPurpleAccent),
            items:list.map<DropdownMenuItem<String>>((String drop){
               return DropdownMenuItem(
                 value: drop,
                     child: Text(drop),
               );
            }).toList(),
            onChanged:(String ? value){
            setState(() {
            dropdownValue=value!;
            });
        }),
      ),
    );
  }
}