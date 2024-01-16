import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: StaggerdgridEg(),));
}
class StaggerdgridEg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
        crossAxisCount:4,
        crossAxisSpacing: 4,
        mainAxisSpacing:4,
        children: [
          StaggeredGridTile.count(crossAxisCellCount:3, mainAxisCellCount:1, 
              child:Container(
                color: Colors.purpleAccent,
                child: Column(
                   children: [
                       Image(image: AssetImage('assets/Icons/5.png'),height:50,width:100,),
                       Text('WELCOME')
                ],),
              )),
          StaggeredGridTile.count(crossAxisCellCount:1, mainAxisCellCount:3,
              child:Container(
                color: Colors.cyan,
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/Icons/7.png'),height:200,width: 80,),
                    Text('WELCOME')
                  ],),
              )),
          StaggeredGridTile.count(crossAxisCellCount:2, mainAxisCellCount:2,
              child:Container(
                color: Colors.redAccent,
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/Icons/1.png'),height:200,width: 200,),
                    Text('WELCOME')
                  ],),
              )),
          StaggeredGridTile.count(crossAxisCellCount:1, mainAxisCellCount:3,
              child:Container(
                color: Colors.pinkAccent,
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/Icons/12.png'),height:200,width: 100,),
                    Text('WELCOME')
                  ],),
              )),




        ],
      ),
    );
  }
  
}