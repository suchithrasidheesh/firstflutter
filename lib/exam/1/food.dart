import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'food2.dart';

class food extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white70,
            child:Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 460),
                  child: food2(),
                ),
                SizedBox(width: 10,),
                ClipRRect(borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 60,width:double.infinity,
                    color: Colors.grey[200],
                    child: Row(
                      children: [
                        SizedBox(width: 50,),
                        ClipRRect(borderRadius: BorderRadius.circular(40),
                            child: Text("+")),
                        ElevatedButton(onPressed: (){}, child: Text('2')),
                        ClipRRect(borderRadius: BorderRadius.circular(40),
                            child: Text("-")),
                        SizedBox(width: 200,),
                        ElevatedButton(onPressed: (){}, child:Text('ADD to cart',),style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),),
                      ],
                    ),
                  ),
                )

              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:250),
            child: ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft:Radius.circular(10)),
              child: Container(
                color: Colors.grey,
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                            children: [
                          Padding(
                           padding: const EdgeInsets.only(left: 10,top: 320),
                            child: Text('Lunchfood',style: TextStyle(fontWeight: FontWeight.bold),),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Icon(Icons.heart_broken,color: Colors.redAccent,),
                          )
                  ],
                ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('\$500'),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        ClipRRect(borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height:30,width:60,color: Colors.pink[200],
                            child: Center(child: Text('JUICE')),
                          ),
                        ),
                        SizedBox(width: 10,),
                        ClipRRect(borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height:30,width:60,color: Colors.pink[200],
                            child: Center(child: Text('JUICE')),
                          ),
                        ),
                        SizedBox(width: 10,),
                        ClipRRect(borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height:30,width:60,color: Colors.pink[200],
                            child: Center(child: Text('JUICE')),
                          ),
                        ),
                        SizedBox(width: 100,),
                        Icon(Icons.star,color: Colors.yellowAccent,),
                        Icon(Icons.star,color: Colors.yellowAccent,),
                        Icon(Icons.star,color: Colors.yellowAccent,),
                        Icon(Icons.star,color: Colors.yellowAccent,),
                      ],
                    ),)
          ])))),
          Padding(
            padding: const EdgeInsets.only(bottom: 400),
            child: ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
              child: Container(
                width: double.infinity,height:400,
                color: Colors.brown,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,left:30,bottom: 50),
                  child: Image(image: AssetImage('assets/Icons/lunch.png'),),
                ),
              ),
            ),
          )
          
        ],
      ),
    );
  }
  
}