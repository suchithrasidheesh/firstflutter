import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: StaggerdGrid(),));
}
class StaggerdGrid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children:  [
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 3,
            child: Container(child: Text('hai'),color: Colors.cyan),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 1,
            child: Container(child: Text('hello'),color: Colors.redAccent,),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 1,
            child: Container(child: Text('hai'),color: Colors.pinkAccent,),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 1,
            child: Container(child: Text('hello'),color: Colors.purpleAccent,),
          ),

        ],
      ),
    );
  }

}