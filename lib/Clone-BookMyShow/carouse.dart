import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class carouse extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,width: double.infinity,
      color: Colors.blueGrey,
      child: Column(
        children: [
          Expanded(
            child: CarouselSlider(items: [
              Row(
                children: [
                  ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: Container(
                        height: 200,width: 150,
                        child: Image(image:AssetImage('assets/clone/movie Aazam.png'),fit: BoxFit.fill,)
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 200,width: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Text('Aazam',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),
                        SizedBox(width: 10,),
                        Text('2h 8m-Crime,Mystery,\nThriller',style: TextStyle(fontSize:10,color: Colors.white),),
                        SizedBox(width: 10,),
                        Text('Hindi',style: TextStyle(fontSize:10,color: Colors.white),),
                        SizedBox(width: 10,),
                        Text('Set in the underbelly\nof the Mumbai\nunderworld',style: TextStyle(fontSize:10,color: Colors.white),),
                      ],
                    ),
                  ),
                  ]),
                  Row(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(10),
                        child: Container(
                            height: 200,width: 150,
                            child: Image(image:AssetImage('assets/clone/movie aquaman.png'),fit: BoxFit.fill,)
                        ),
                      ),
                      SizedBox(width: 20,),
                     Container(
                       height: 200,width: 100,
                       child: ListView(
                         //crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                            SizedBox(width: 10,),
                            Text('Aquaman\nthe Lost Kingdom',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(width: 10,),
                            Text('2h 8m-Action\nThriller',style: TextStyle(fontSize:10,color: Colors.white),),
                            SizedBox(width: 10,),
                            Text('Hindi,English,\nTamil',style: TextStyle(fontSize:10,color: Colors.white),),
                            SizedBox(width: 10,),
                            Text('When an ancient power\nis unleashed',style: TextStyle(fontSize:10,color: Colors.white),),
                                             ],
                                           ),
                  ),
                  ]),
                  Row(
                      children: [
                       ClipRRect(borderRadius: BorderRadius.circular(10),
                           child: Container(
                              height: 200,width: 150,
                              child: Image(image:AssetImage('assets/clone/movie kasthuri.png'),fit: BoxFit.fill,)
                          ),),
                         SizedBox(width: 20,),
                         Container(
                           height: 200,width: 100,
                            child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                               SizedBox(width: 10,),
                               Text('Kastoori The\nMusk',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),
                               SizedBox(width: 10,),
                               Text('1h 43m-Drama',style: TextStyle(fontSize:10,color: Colors.white),),
                               SizedBox(width: 10,),
                               Text('Hindi',style: TextStyle(fontSize:10,color: Colors.white),),
                               SizedBox(width: 10,),
                               Text('A Tale of hope\n and dreams',style: TextStyle(fontSize:10,color: Colors.white),),
                            ],),
                         ),
                      ]),
                  Row(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(10),
                         child: Container(
                          height: 200,width: 150,
                            child: Image(image:AssetImage('assets/clone/movie migration.png'),fit: BoxFit.fill,)
                           ),),
                      SizedBox(width: 20,),
                      Container(
                          height: 200,width: 100,
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10,),
                             Text('Migration',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),
                              SizedBox(width: 10,),
                            Text('1h 8m-Animation,comedy',style: TextStyle(fontSize:10,color: Colors.white),),
                            SizedBox(width: 10,),
                            Text('Hindi,English',style: TextStyle(fontSize:10,color: Colors.white),),
                            SizedBox(width: 10,),
                            Text('The Mallard family is in\na bit of a rut',style: TextStyle(fontSize:10,color: Colors.white),),
                      ],),
                      ),
                  ]),
            ],
            options:CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              aspectRatio: 2.0,
            )),
          ),
        ElevatedButton(onPressed: (){}, child:Text("PAY OR RENT",style: TextStyle(color: Colors.white),),
          style:ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent) ,)
        ])
    );
  }

}