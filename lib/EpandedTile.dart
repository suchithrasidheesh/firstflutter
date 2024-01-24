import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ExpandedTile(),));
}
class ExpandedTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(title: Text('Colors'),
      subtitle:Text('Subtitile'),
      children: [
        ListTile(
          leading:CircleAvatar(backgroundColor: Colors.cyan,),
          title: Text('Cyan'),
        ),
        ListTile(
          leading:CircleAvatar(backgroundColor: Colors.pink,),
          title: Text('Pink'),
        ),
        ListTile(
          tileColor:Colors.cyan,
          leading:CircleAvatar(backgroundColor: Colors.purpleAccent,),
          title: Text('Purple'),
        ),
        ListTile(
          leading:CircleAvatar(backgroundColor: Colors.greenAccent,),
          title: Text('Green'),
        ),
        ListTile(
          leading:CircleAvatar(backgroundColor: Colors.yellowAccent,),
          title: Text('Yellow'),
        ),
        ListTile(
          leading:CircleAvatar(backgroundColor: Colors.blue,),
          title: Text('Blue'),
        )
      ],
    );
  }

}