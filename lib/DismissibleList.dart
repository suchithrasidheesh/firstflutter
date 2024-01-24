import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: DismissibleListEg(),
  ));
}
class DismissibleListEg extends StatelessWidget{
  var data=<String>['Data1','Data2','Data3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Dismissible(key:ValueKey(data),
            child:ListTile(
              title:Center(child: Text(data[index])),
            ),
          background: Container(color: Colors.cyan,),
          secondaryBackground: Container(color: Colors.green,),
        );

      },itemCount:data.length,),
    );
  }

}