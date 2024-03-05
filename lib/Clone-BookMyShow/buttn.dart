import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadius.circular(10),
      child: Container(
        height:30,width: 100,color: Colors.grey[300],
        child: Row(
          children: [
            Image(image: AssetImage('assets/clone/like.png'),height: 20,width: 20,color:Colors.green,),
            Text('46.6K'),
            Text('Likes')
          ],
        ),
      ),

    );
  }

}

