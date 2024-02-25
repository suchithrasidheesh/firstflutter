import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class mapcontainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,width: 100,
      child: Stack(
        children: [
          ClipRRect(borderRadius: BorderRadius.horizontal(right: Radius.elliptical(15, 35)),
            child: Container(
              color: Colors.pinkAccent[100],height: 50,width: 100,
              child: Image(image: AssetImage('assets/clone/gmap.png'),),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Browse By Cinemas',style: TextStyle(fontSize:20),),
                  Icon(Icons.arrow_forward_ios,size: 5,),
                  Icon(Icons.arrow_forward_ios,size: 5),
                  Icon(Icons.arrow_forward_ios,size: 5),
                ],
              ),
              Text("See what's playing in cinemas near you",style: TextStyle(color:Colors.redAccent,fontSize: 10),)
            ],)
        ],
      ),
    );
  }

}