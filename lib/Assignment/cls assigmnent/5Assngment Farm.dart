import 'package:firstflutterproject/Assignment/cls%20assigmnent/5%20asgmnt%20Item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '5 agggnmt GardenImg.dart';
import '5 assgmnt shopCategory.dart';
import '5 assgnt box.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:FreshFarm(),
  ));
}
class FreshFarm extends StatelessWidget {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            backgroundColor: Colors.green,
            title: const Text('FARMERS FRESH ZONE', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),),
            actions: const [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(Icons.fmd_good_outlined, color: Colors.white,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      'Kochi', style: TextStyle(color: Colors.white),),
                  )
                ],),
            ],
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              child: Container(
                height: 30, width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //borderRadius: BorderRadius.circular(30)
                  shape: BoxShape.rectangle,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search for Fruits and Vegetables.....',
                    border: InputBorder.none,
                  ),),
              ),),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Item(txt: 'FRUITS'),
                Item(txt: 'VEGETABLE'),
                Item(txt: 'EXOTIC CUTS'),
              ],
            )
            ),
          SliverToBoxAdapter(
            child:GardenImg(),
          ),
          SliverToBoxAdapter(
            child: Box(),
          ),
          SliverToBoxAdapter(
            child: ShopCategory(),
          )
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        type:BottomNavigationBarType.fixed ,
          fixedColor: Colors.green,
          currentIndex: index,
          items:[
            BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label:'Account')
      ]),
    );
  }
}
