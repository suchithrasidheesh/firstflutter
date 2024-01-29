import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
final List<String>imgList=[
  'assets/Icons/applegarden.png',
  'assets/Icons/berrygarden.png',
  'assets/Icons/mangogarden.png',
  'assets/Icons/orangegarden.png',
  'assets/Icons/mix vege.png'
];

class GardenImg extends StatelessWidget{
  final List<Widget>img=imgList.map((item){
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ClipRRect(borderRadius: BorderRadius.circular(60),
        child: Container(
            height: 90,width: double.infinity,
            margin: EdgeInsets.all(5),
            child: Image(image: AssetImage(item),fit: BoxFit.cover,)
        ),
      ),
    );
  }).toList();

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: CarouselSlider(
          items:img,
          options:CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
          )
      ),
    );
  }

}