  import 'package:firstflutterproject/Assignment/cls%20assigmnent/7Assgnt%20willbuy.dart';
import 'package:firstflutterproject/Assignment/cls%20assigmnent/7assgntITEMS.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '7Greentea.dart';

void main(){
  runApp(MaterialApp(
    home: home7assgnt(),
    debugShowCheckedModeBanner: false,
  ));
}
class home7assgnt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('Venus'),
              actions: [
                Icon(Icons.menu),
              ],
              expandedHeight: 150,
              pinned: false,
              floating: true,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 50,left: 40,right: 20),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'search'
                    ),

                  ),
                ),
              ),
              bottom: TabBar(
                  tabs: [
                Tab(
                  text: 'Greentea',
                ),
                Tab(text:'BruceCoffee',),
                Tab(text:'Cappucino',),
                Tab(text: 'Coffee',)

              ]),
            ),
            SliverToBoxAdapter(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30,),
                InkWell(
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Greentea()));
                  },
                  child:items(img:Image(image:AssetImage('assets/Icons/greentea.png'),height: 50,width: 50,
                  ), txt: 'Green tea'),),
                  SizedBox(width: 50,),
                  items(img: Image(image: AssetImage('assets/Icons/chococoffe.png'),height: 50,width: 50,),
                      txt:'Cake coffee'),
                  SizedBox(width: 50,),
                  items(img:Image(image:AssetImage('assets/Icons/crem.png'),height: 50,width: 50,
                  ), txt: 'BruceCoffee'),
                ],
              )
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text('Will buy',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  willBuy(img: Image(image: AssetImage('assets/Icons/chococoffe.png'),height: 70,width: 70,),
                      tle:'Cappucino' , subtle: 'with many flavour', ledng: '\$45'),
                  SizedBox(height: 20,),
                  willBuy(img: Image(image: AssetImage('assets/Icons/coffee.png'),height: 70,width: 70,),
                      tle:'Coffee' , subtle: 'with many flavour', ledng: '\$33'),
                  SizedBox(height: 20,),
                  willBuy(img: Image(image: AssetImage('assets/Icons/crem.png'),height: 70,width: 70,),
                      tle:'Bruce coffee' , subtle: 'with many flavour', ledng: '\$40'),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Home'),
              BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.shoppingCart),label: 'Cart'),
              BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.heart),label: 'My')
        ]),
      ),
    );
  }

}