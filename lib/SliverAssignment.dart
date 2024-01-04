import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    home: SliverAssignment(),
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
  )));
}
class SliverAssignment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.purple,
            pinned: true,
            floating: true,
            title: Text('Kindacode.com'),
            actions: [
              IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart))
            ],
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.purple,
              title: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search,color: Colors.white,),
                    suffixIcon: Icon(Icons.camera_alt)
                  ),
                ),
              ),
            ),
          ),

          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: 500,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 150,left: 50,right: 10),
                child: Text('This is an Awesome shopping platform',style: TextStyle(color: Colors.white),),
              ),
            );
          },childCount: 1)),
          SliverList(delegate: SliverChildBuilderDelegate((context, index){
            return Container(
                      height: 800,
                      color: Colors.pink,
              //child: Text(''),
            );
          },childCount: 1))
        ],
      ) ,
    );
  }
}