import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:GridviewcustomExtend()));
}
class GridviewcustomExtend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120),
          childrenDelegate: SliverChildListDelegate(
              List.generate(8, (index){
                return Card(
                  child: Column(
                    children: [
                      Image(image: AssetImage('assets/Icons/home.png'),height: 50,width: 50,),
                      Row(
                        children: [
                          Text('House'),
                          Text('    Price')
                        ],
                      )
                    ],
                  ),
                );
              })))
    );
  }

}