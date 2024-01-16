import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Gridviewbuilder() ,));
}
class Gridviewbuilder extends StatelessWidget{
  var Iconss=[Icons.add_card,Icons.contact_phone_sharp,Icons.contacts_sharp,Icons.scale_sharp];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:40),
          itemBuilder: (context,index){
          return Container(
            child: Icon(Iconss[index]),
          );
          },itemCount:Iconss.length,),
    );
  }

}