import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class willBuy extends StatelessWidget{
  @override
  final Image img;
  final String tle;
  final String subtle;
  final String ledng;
  willBuy({
    Key?key,
    required this.img,
    required this.tle,
    required this.subtle,
    required this.ledng,
  }):super(key: key);
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(borderRadius: BorderRadius.circular(20),
          child: Container(height: 100,width: 100,
              child:Card(color: Colors.lightGreen,
                child: img,
              )
            ),
          ),

        SizedBox(width: 40,),
        Column(
          children: [
            Text(tle),
            SizedBox(height: 10,),
            Text(subtle)
          ],
        ),
        SizedBox(width: 200,),
        Text(ledng)
      ],
    );

  }

}