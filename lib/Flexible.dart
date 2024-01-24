import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: FlexibleEg(),
  ));
}
class FlexibleEg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex:1,
                  fit: FlexFit.loose,
                  child: Container(
                    height: 100,width: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.cyan),
                  ),
                ),
                Flexible(
                  flex:1,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.red),
                  ),
                ),
                Flexible(
                  flex:2,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.cyan),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

}