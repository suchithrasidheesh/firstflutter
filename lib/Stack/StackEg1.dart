import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:StackEg1(),));
}
class StackEg1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white,height: double.infinity,width: double.infinity,),
          Positioned(child: ClipRRect(borderRadius:BorderRadius.circular(30),child: Container(color: Colors.pink[100],
          child:Padding(
            padding: const EdgeInsets.only(top:50,left:10),
            child: Column(
              children: [
                Text('James',style: TextStyle(fontSize:40),),
                Text('USA',style: TextStyle(fontSize:20),),
                Padding(
                  padding: const EdgeInsets.only(left:200),
                  child: Row(
                    children: [
                      Text('3000'),
                      Text('   200')
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color:Colors.grey ,
                ),

                   ClipRRect(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),),
                    child: Container(height: 50,width: 50,
                      color:Colors.cyan,
                    ),
                  ),

              ],
            ),
          ) ,),),top: 120,height: 800,width:500,),
          Positioned(child: ClipRRect(borderRadius:BorderRadius.circular(30),
            child: Container(
                child: Image(image:AssetImage('assets/Icons/img.svg'),fit: BoxFit.fill,)
                )),
            left: 200,top: 60,height: 100,width: 100,)
        ],
      ),
    );
  }

}