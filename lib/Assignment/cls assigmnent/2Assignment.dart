import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Assignment2(),
  ));
}

class Assignment2 extends StatelessWidget {
  var img = [
    'assets/Icons/hotel1.png',
    'assets/Icons/hotel2.png',
    'assets/Icons/hotel3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              expandedHeight:170,
              backgroundColor: Colors.blueAccent,
              floating: false,
              leading: Icon(Icons.menu, color: Colors.white,),
              actions: [
                Icon(Icons.favorite_border, color: Colors.white,)
              ],
              flexibleSpace:
              ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60,left: 150),
                    child: Text(
                      'Type Your Location', style: TextStyle(color: Colors.white),),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    //color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Kakkanad,Kochi',
                          border: InputBorder.none
                      ),
                    ),),
                ],)),
          SliverToBoxAdapter(
            child: categoryBuild1(),
          ),
          /*SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return hotelRooms1(index);
          }, childCount: img.length))*/
        ],),

    );
  }

 Widget categoryBuild1() {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 15,),
          Category(
            icon: Icons.hotel,
            title: 'Hotel',
            backgroundColor:Colors.pink,
          ),
          SizedBox(width: 15,),
          Category(
            icon: Icons.restaurant,
            title: 'Restuarant',
            backgroundColor:Colors.blue,
          ),
          SizedBox(width: 15,),
          Category(
            icon: Icons.local_cafe,
            title: 'Cafe',
            backgroundColor:Colors.orange,
          )
        ],
      ),
    );
 }
 }
 class Category extends StatelessWidget{
  final IconData icon;
  final String title;
  final Color? backgroundColor;

 const Category({
    Key? key,
   required this.icon,
   required this.title,
   this.backgroundColor,

 }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(5))
        ),
        margin: const EdgeInsets.symmetric(vertical:10),
        padding: const EdgeInsets.all(10),
        width: 100,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: Colors.white,),
            SizedBox(height:5),
            Text(title,style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
 }