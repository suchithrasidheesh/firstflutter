import 'package:firstflutterproject/exam/1/fdcontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class food2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          bttn(),
        Text('Food Information',style: TextStyle(fontSize: 25,color: Colors.black),),
        Text('Food is one of the basic necessities of life.Food contains nutrients—substances essential for the growth,'
            '\n repair, and maintenance of body.',style: TextStyle(fontSize: 10,color: Colors.black),),
       Row(
         children: [
           fdcontainer(clor: Colors.greenAccent, img:Image(image: AssetImage('assets/Icons/noodles.png'))),
           SizedBox(width: 20,),
           fdcontainer(clor: Colors.blueGrey, img: Image(image: AssetImage('assets/Icons/noodle.png'))),
           SizedBox(width: 20,),
           fdcontainer(clor: Colors.orangeAccent, img: Image(image: AssetImage('assets/Icons/lunch.png'))),
           SizedBox(width: 20,),
           fdcontainer(clor:Colors.lightGreen , img: Image(image: AssetImage('assets/Icons/food.png')))
         ],
       )
      ],
    );
  }
Widget bttn(){
    return Row(
      children: [
        SizedBox(width: 20,),
          ClipRRect(borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 40,width: 90,color: Colors.orangeAccent[200],
                child: Center(child: Text('meals',style: TextStyle(fontSize:20,color: Colors.black),)),
              )),
        SizedBox(width: 20,),
        ClipRRect(borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 40,width: 90,color: Colors.grey[200],
              child: Center(child: Text('meals',style: TextStyle(fontSize:20,color: Colors.black),)),
            )),
        SizedBox(width: 20,),
        ClipRRect(borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 40,width: 90,color: Colors.grey[200],
              child: Center(child: Text('meals',style: TextStyle(fontSize:20,color: Colors.black),)),
            )),
      ],

    );
}
}