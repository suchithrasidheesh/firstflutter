import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class updateWhatsApp extends StatelessWidget{
  var title=['Status','Channels'];
  var name=['Amod','Beena'];
  var imag=['assets/Icons/5.png','assets/Icons/6.png'];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder:(context,index){
      return Container(
        child: Column(
          children: [
            Row(
              children: [
                Text(title[index]),
                Padding(
                  padding: const EdgeInsets.only(left:100,right: 10),
                  child: Icon(Icons.more_vert),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(backgroundImage:AssetImage(imag[index]),),
                    Text(name[index])
                  ],
                )
                           ],
            )
          ],

        ),
      );

    }, separatorBuilder:(context,index){
      return Divider(
        color: Colors.grey,
        thickness:1,
      );
    }, itemCount:name.length);
  }

}