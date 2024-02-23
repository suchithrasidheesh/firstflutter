import 'package:firstflutterproject/exam/1/FoodMain.dart';
import 'package:firstflutterproject/exam/1/fooditem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'food.dart';



void main(){
  runApp(MaterialApp(home: NutritionApp(),
  debugShowCheckedModeBanner: false,));
}
 class NutritionApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title:Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Text('Find Your meal...',style: TextStyle(fontSize:15),),
                  Text('Nutrition Meal')
                ],
              ),
            ),
            actions: [
              ClipRRect(borderRadius: BorderRadius.circular(30),
               child: Image(image: AssetImage('assets/Icons/examgirl.png'),height: 50,width: 50,),)
            ],
            expandedHeight: 150,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 80,left: 30,right: 40),
              child: Container(
                child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),hintText:'Search Food'
                ,  suffixIcon: Icon(Icons.search)),
              )),
            ),
          ),
          SliverToBoxAdapter(
            child:fooditems(),
          ),
          SliverList(delegate: SliverChildListDelegate([
            SingleChildScrollView( scrollDirection: Axis.horizontal,
              child: Row (
                children: [
                  FoodMain(txt1: 'MorningFood', txt2: '\$200', img: Image(image: AssetImage('assets/Icons/noodles.png')),
                      clr: Colors.cyanAccent),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>food()));
                   },
                    child: FoodMain(txt1: 'LunchFood', txt2: '\$300', img: Image(image: AssetImage('assets/Icons/lunch.png')),
                        clr: Colors.cyanAccent),
                  ),
                ],
              ),
            )
          ])
      ),
        ]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_applications_sharp),label: 'Person')
        ],
      ),
    );
  }

 }