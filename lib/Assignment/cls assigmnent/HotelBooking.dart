import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Assignment1(),
  ));
}

class Assignment1 extends StatelessWidget {
  var img = [
    'assets/Icons/hotel1.png',
    'assets/Icons/hotel2.png',
    'assets/Icons/hotel3.png',
    'assets/Icons/hotel4.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
        SliverAppBar(
          pinned: true,
        expandedHeight:170,
        backgroundColor: Colors.blueAccent,
           leading: Icon(Icons.menu, color: Colors.white,),
        actions: [
           Icon(Icons.favorite_border, color: Colors.white,)
        ],
            flexibleSpace: ListView(
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
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Kakkanad,Kochi',
                      border: InputBorder.none
                  ),
                ),),
            ],)),
        SliverToBoxAdapter(
          child: categoryBuild(),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          return hotelRooms(index);
        }, childCount: img.length))
        ],),

    );
  }

  Widget categoryBuild() {
    return Container(
      height: 100, width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 45),
            child: ClipRRect(borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 80, width: 100,
                color: Colors.pink,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Icon(Icons.hotel, color: Colors.white,),
                    ),
                    Text('Hotel', style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50),
            child: ClipRRect(borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 80, width: 100,
                color: Colors.orange,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Icon(Icons.restaurant, color: Colors.white,),
                    ),
                    Text('Restaurant', style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 55),
            child: ClipRRect(borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 80, width: 100,
                color: Colors.blue,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Icon(Icons.local_cafe, color: Colors.white,),
                    ),
                    Text('Cafe', style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget hotelRooms(int index) {
    return Container(
      height: 350,width: 350,
       child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 30,),
          Stack(
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(40),
                  child: Image(image: AssetImage(img[index],),
                    height: 250,
                    width: 300,
                     )),
              Positioned(top: 145, right: 30,height: 30,width: 30,
                  child: Container(color:Colors.white,child: Center(child: Text('\$40')))),
              Positioned(top:50,left: 250,
                  child: Icon(Icons.star_border_purple500_outlined)),
            ],
          ),
          Text('Awesome Room near Kakkanad'),
          Text('kakkanad,Kochi'),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Icon(Icons.star,color: Colors.green,),
              Icon(Icons.star,color: Colors.green,),
              Icon(Icons.star,color: Colors.green,),
              Icon(Icons.star,color: Colors.green,),
              Icon(Icons.star,color: Colors.green,),
              Text('(Rating 212k)'),
            ],
          ),
        ],
      ),
    );
  }

}