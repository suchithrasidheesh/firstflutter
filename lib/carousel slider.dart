import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Carousel(),));
}
class Carousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(items:[
          Image(image: AssetImage('assets/Icons/flutter.png')),
          Image(image: AssetImage('assets/Icons/img1.jpg')),
          Image(image: AssetImage('assets/Icons/img3.jpg'))
        ], options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 1.0,
          enlargeCenterPage: true,
        ),),
      )

    );
  }

}