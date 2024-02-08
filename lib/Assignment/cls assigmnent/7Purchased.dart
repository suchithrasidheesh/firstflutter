import 'package:firstflutterproject/Assignment/cls%20assigmnent/7cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class purchased extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 5,right: 20,
              child: Icon(Icons.menu)),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Shopping Cart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('A purchased cart',style: TextStyle(fontSize: 10)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Row(
                  children: [
                    cart(img: Image(image: AssetImage('assets/Icons/greentea.png'),height: 70,width: 70,)),
                    Column(
                      children: [
                        Text('Green Tea',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        Text('mint Flavour',style: TextStyle(fontSize: 10),),
                        Text('\$36',style: TextStyle(fontSize: 20,color: Colors.green),)
                      ],
                    ),
                  SizedBox(width: 250,),
                  Column(
                    children: [
                      Text('+'),
                      Text('1'),
                      Text('-')
                  ],)
                  ],),
                SizedBox(height: 30,),
                Row(
                  children: [
                    cart(img: Image(image: AssetImage('assets/Icons/crem.png'),height: 70,width: 70,)),
                    Column(
                      children: [
                        Text('Rose Tea',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        Text('chocolate Flavour',style: TextStyle(fontSize: 10),),
                        Text('\$45',style: TextStyle(fontSize: 20,color: Colors.green),)
                      ],
                    ),
                    SizedBox(width: 240,),
                    Column(
                      children: [
                        Text('+'),
                        Text('4'),
                        Text('-')
                      ],)
                  ],),
                SizedBox(height: 30,),
                Row(
                  children: [
                    cart(img: Image(image: AssetImage('assets/Icons/chococoffe.png'),height: 70,width: 70,)),
                    Column(
                      children: [
                        Text('Tamarind Tea',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        Text('Chocolate Flavour',style: TextStyle(fontSize: 10),),
                        Text('\$14',style: TextStyle(fontSize: 20,color: Colors.green),)
                      ],
                    ),
                    SizedBox(width: 220,),
                    Column(
                      children: [
                        Text('+'),
                        Text('3'),
                        Text('-')
                      ],)
                  ],),
                Padding(
                  padding: const EdgeInsets.only(top: 80,left:80,right: 150),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green),onPressed: (){}, child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('price',style: TextStyle(color: Colors.white),),
                      SizedBox(width: 30,),
                      Text('\$100',style: TextStyle(color: Colors.white)),
                      SizedBox(width: 60,),
                      Text('Reset',style: TextStyle(color: Colors.white))
                    ],
                  )),
                )
            ],),
          )
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
            items: [
                     BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
                     BottomNavigationBarItem(icon:FaIcon(FontAwesomeIcons.shoppingCart),label: 'Cart'),
                     BottomNavigationBarItem(icon:FaIcon(FontAwesomeIcons.heart),label: 'My')
    ]),
    );
  }

}