import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.white,
            border: Border.all(color: Colors.black, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:30),
              child: Column(
                children: [
                  SizedBox(height: 10,width: 20,),
                  Icon(Icons.alarm_sharp),
                  SizedBox(height: 10,width: 20,),
                  Text(('30 min policy'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:60),
              child: Column(
                children: [
                  SizedBox(height: 10,width: 20,),
                  Icon(Icons.directions_subway),
                  SizedBox(height: 10,width: 20,),
                  Text(('Tracebility'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Column(
                children: [
                  SizedBox(height: 10,width: 20,),
                  Icon(Icons.house_outlined),
                  SizedBox(height: 10,width: 20,),
                  Text(('Local Sourrounding'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}