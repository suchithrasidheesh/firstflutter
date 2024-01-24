import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget{
  const ProjectTile({
    Key?key,
    required this.txt,
    required this.icon,

  }):super(key: key);
  final String txt;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
      color:Colors.grey[300],
      ),
      child: ListTile(
        leading:icon,
        title: Text(txt,style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500),),
        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
      ),
    );
  }

}