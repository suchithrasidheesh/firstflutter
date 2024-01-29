import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopCategory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Shop by Category',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Container(
            height: 100,width: 300,
            color: Colors.white54,
            child: CarouselSlider(
                items:[
                  Image(image: AssetImage('assets/Icons/tomato.png'),fit:BoxFit.fill,),
                  Image(image: AssetImage('assets/Icons/bluberry.png'),fit: BoxFit.fill,),
                  Image(image: AssetImage('assets/Icons/carrot.png'),fit:BoxFit.fill,),
                  Image(image: AssetImage('assets/Icons/pineapple.png'),fit:BoxFit.fill),
                  Image(image: AssetImage('assets/Icons/redburry.png'),fit:BoxFit.fill,),
                  Image(image: AssetImage('assets/Icons/vege.png'),fit:BoxFit.fill,)
               ],
                options:CarouselOptions(
                  autoPlay:true,
                  autoPlayAnimationDuration:Duration(microseconds:20),
                  enlargeCenterPage:true,
                )),
          )
        ],
      ),
    );
  }
}
















