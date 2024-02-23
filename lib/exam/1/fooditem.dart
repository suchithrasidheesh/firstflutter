import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fooditems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20,),
        Column(
          children: [
            Container(
              color: Colors.pink[200],
              height: 100,width: 100,
              child: Image(image: AssetImage('assets/Icons/donut.png'),fit: BoxFit.fill,),
            ),
            Text('Bakery')
          ],
        ),
        SizedBox(width: 20,),
        Column(
          children: [
            Container(
              height: 100,width: 100,
              color: Colors.grey[200],
              child: Image(image: AssetImage('assets/Icons/diar.png'),height: 50,width: 50,),
            ),
            Text('Diary')
          ],
        ),
        SizedBox(width: 20,),
        Column(
          children: [
            Container(
              height: 100,width: 100,
              color: Colors.orange[200],
              child: Image(image: AssetImage('assets/Icons/Seafood.png'),fit: BoxFit.fill,),
            ),
            Text('SeaFood')
          ],
        ),
        SizedBox(width: 20,),
        Column(
          children: [
            Container(
              height: 100,width: 100,
              color: Colors.pink[200],
              child: Image(image: AssetImage('assets/Icons/snacks.png'),fit: BoxFit.fill,),
            ),
            Text('Snacks')
          ],
        )
      ],
    );
  }

  }

