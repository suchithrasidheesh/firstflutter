
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodMain extends StatelessWidget{
  final String txt1;
  final String txt2;
  final Image img;
  final Color clr;
  FoodMain({
    Key?key,
    required this.txt1,
   required this.txt2,
    required this.img,
    required this.clr
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(30),
            child: Container(
              height:300,width:300,
              color:clr,
              child: Padding(
                padding: const EdgeInsets.only(left: 40,right: 40,bottom: 150),
                child: img,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:200,left: 20),
            child:ClipRRect(borderRadius: BorderRadius.circular(30),
              child: Container(
                height:150,width:250,color: Colors.grey[300],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(txt1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(txt2),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellowAccent,),
                        Icon(Icons.star,color: Colors.yellowAccent,),
                        Icon(Icons.star,color: Colors.yellowAccent,),
                        Icon(Icons.star,color: Colors.yellowAccent,),
                      ],
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
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          )
        ],
      );
  }
}