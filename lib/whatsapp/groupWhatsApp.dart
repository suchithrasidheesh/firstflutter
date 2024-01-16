import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class groupWhatsApp extends StatelessWidget{
  var group=['New community','Academis','Psc batches'];
  var img=['assets/Icons/1.png','assets/Icons/2.png','assets/Icons/3.png'];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder:(context,index){
      return ListTile(
        title: Text(group[index]),
        leading: CircleAvatar(backgroundImage:AssetImage(img[index]),)
      );

    }, separatorBuilder:(context,index){
      return Divider(
        color: Colors.grey,
        thickness: 1,
      );

    }, itemCount:group.length);
  }

}