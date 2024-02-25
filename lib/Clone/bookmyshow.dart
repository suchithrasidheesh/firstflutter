import 'package:carousel_slider/carousel_slider.dart';
import 'package:firstflutterproject/Clone/buttn.dart';
import 'package:firstflutterproject/Clone/carouse.dart';
import 'package:firstflutterproject/Clone/events.dart';
import 'package:firstflutterproject/Clone/imgcontainer.dart';
import 'package:firstflutterproject/Clone/mapcontainer.dart';
import 'package:firstflutterproject/Clone/scroll-1.dart';
import 'package:firstflutterproject/Clone/scroll.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'itemsbookmyshow.dart';

void main(){
  runApp(MaterialApp(
    home:HomeBookMyShow(),
  debugShowCheckedModeBanner: false,
  ));
}
class HomeBookMyShow extends StatefulWidget{
  @override
  State<HomeBookMyShow> createState() => _HomeBookMyShowState();
}

class _HomeBookMyShowState extends State<HomeBookMyShow> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome Guest!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Row(
              children: [
                Text('Tirur',style: TextStyle(fontSize:10,color: Colors.red),),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,size: 8,color: Colors.red,)
              ],
            )
          ],
        ),
        actions: [
          SizedBox(width: 15,),
          Icon(Icons.search),
          SizedBox(width:15,),
          Icon(Icons.notifications),
          SizedBox(width: 15,),
          Icon(Icons.qr_code),
          SizedBox(width: 15,),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Divider(
              thickness: 1,
            ),
          ),
          SliverToBoxAdapter(
            child:SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                 child: Row(
                    children: [
                      itemsbookmyshow(img: Image(image: AssetImage('assets/clone/movies.png'),height: 30,width: 30,), txt: 'Movies'),
                      itemsbookmyshow(img: Image(image: AssetImage('assets/clone/sports.png'),height: 30,width: 30,), txt: 'Sports'),
                      itemsbookmyshow(img: Image(image: AssetImage('assets/clone/music.png'),height: 30,width: 30,), txt: 'Music\nShows'),
                      itemsbookmyshow(img: Image(image: AssetImage('assets/clone/Stream.png'),height: 30,width: 30,), txt: 'Stream'),
                      itemsbookmyshow(img: Image(image: AssetImage('assets/clone/parks.png'),height: 30,width: 30,), txt: 'Amusment\nParks'),
                      itemsbookmyshow(img: Image(image: AssetImage('assets/clone/workshop.png'),height: 30,width: 30,), txt: 'Workshps'),
                      itemsbookmyshow(img: Image(image: AssetImage('assets/clone/See all.png'),height: 30,width: 30,), txt: 'See All'),
                    ]),
          )),
          SliverToBoxAdapter(
            child: Divider(
              thickness: 0.2,
            ),
          ),
          SliverToBoxAdapter(
            child: CarouselSlider(items:
                [
                  scroll(img: Image(image: AssetImage('assets/clone/back1.png')),txt:'watchnow'),
                  scroll(img: Image(image: AssetImage('assets/clone/back2.png')),txt:'watchnow'),
                  scroll(img: Image(image: AssetImage('assets/clone/back3.png')),txt:'watchnow'),
                ], options:CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
            ),),
          ),
          SliverToBoxAdapter(
              child: Container(
                height: 100,width:200,
                child: Image(image: AssetImage('assets/clone/boximage.png'),fit: BoxFit.fill,),
              ),

            ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15),
                    child: Text("Recommended Movies",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
                  ),
                  SizedBox(height: 10,width: 5,),
                  Row(
                    children: [
                      SizedBox(width:10,),
                      Column(
                        children: [
                          SizedBox(width: 15,),
                          scroll1(img:Image(image: AssetImage('assets/clone/mov1.png'),fit: BoxFit.fill,),),
                          SizedBox(height: 10,width:15,),
                          buttn(),
                          SizedBox(height:5,),
                          Text('Manjummal Boys')
                      ]),
                      SizedBox(width:10,),
                      Column(
                          children: [
                            SizedBox(width: 15,),
                         scroll1(img: Image(image: AssetImage('assets/clone/mov2.png'),fit: BoxFit.fill,),),
                         SizedBox(height: 10,),
                         buttn(),
                            SizedBox(height:5,),
                            Text('Premalu')
                          ],)
                    ],),
                ],),
            ),),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 25,left: 15,right:35),
              child: mapcontainer(),
            ),
          ),
          SliverToBoxAdapter(
            child:Padding(
              padding: const EdgeInsets.only(left: 15,right: 30,top: 35),
              child: ClipRRect(borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 200,width:100,
                  child: Image(image: AssetImage('assets/clone/card.png'),fit: BoxFit.fill,),
                ),
              ),
            ) ,
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('The Best Events This Week',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('Monday to Sunday,we got you covered'),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 15,),
                    imgcontainer(clr:Colors.lightGreenAccent, img:Image(image: AssetImage('assets/clone/girl.png'),),
                        txt:'PLANS FOR\nTODAY', txt1:'10events'),
                    SizedBox(width: 10,),
                    imgcontainer(clr:Colors.lightBlueAccent, img:Image(image: AssetImage('assets/clone/boy.png'),),
                        txt:'PLANS FOR\nTOMMOROW', txt1:'10+events'),
                  ],)
              ],),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('Browse Events by Category',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('Live events for all your entertainment needs'),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 15,),
                    imgcontainer(clr:Colors.pinkAccent, img:Image(image: AssetImage('assets/clone/boycomedy.png'),),
                        txt:'COMEDY\nSHOWS', txt1:'5 events'),
                    SizedBox(width: 10,),
                    imgcontainer(clr:Colors.orangeAccent, img:Image(image: AssetImage('assets/clone/musicgirl.png'),),
                        txt:'MUSIC\nSHOWS', txt1:'3 events'),
                  ],)
              ],),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 25,),
                Container(
                  height: 450,width: double.infinity,
                  child: Stack(
                    children: [
                      Image(image: AssetImage('assets/clone/bookshow.png'),fit: BoxFit.fill,),
                      Padding(
                        padding: const EdgeInsets.only(top: 130),
                        child: carouse(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
          SliverToBoxAdapter(
            child:SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('The Ultimate Events List',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('Good times outdoor or at home',style: TextStyle(fontSize: 10),),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      imgcontainer(clr: Colors.blueGrey, img:Image(image: AssetImage('assets/clone/spts.png')),
                          txt:'WELLNESS\nEVENTS', txt1:'2Events'),
                      SizedBox(width: 10,),
                      imgcontainer(clr: Colors.deepOrangeAccent, img:Image(image: AssetImage('assets/clone/spts.png')),
                          txt:'OUTDOOR\nADVENDURES', txt1:'5Events'),
                      SizedBox(width: 10,),
                      imgcontainer(clr: Colors.greenAccent, img:Image(image: AssetImage('assets/clone/spts.png')),
                          txt:'COURSES & \nMASTERCLASS', txt1:'10+Events')
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      imgcontainer(clr: Colors.purpleAccent, img:Image(image: AssetImage('assets/clone/spts.png')),
                          txt:'COMEDY MUSIC\n&MORE', txt1:'5Events'),
                      SizedBox(width: 10,),
                      imgcontainer(clr: Colors.blueAccent, img:Image(image: AssetImage('assets/clone/spts.png')),
                          txt:'GROW YOUR\nHOBBY', txt1:'2Events'),
                      SizedBox(width: 10,),
                      imgcontainer(clr: Colors.blueGrey, img:Image(image: AssetImage('assets/clone/spts.png')),
                          txt:'THRILLING\nACTIVITIES', txt1:'5Events')
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                width: double.infinity,height: 370,
                color: Colors.grey[400],
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(width: 15,),
                          Text('Must-attend Live Events',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(width: 200,),
                          Text('See All',style: TextStyle(color: Colors.red,),),
                          Icon(Icons.arrow_forward_ios,size: 10,color: Colors.red,)
                        ],),
                      SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 15,),
                          events(img:Image(image: AssetImage('assets/clone/wpl.png'),fit: BoxFit.fill,),
                              txt:'Mon,4 Mar', txt1:'TATA WPL 2024', txt2:'Multiple Venues'),
                          SizedBox(width: 15,),
                          events(img:Image(image: AssetImage('assets/clone/wondrala.png',),fit: BoxFit.fill,),
                              txt:'Sat,24 Feb onwards', txt1:'Wondrala\nAmusement Park....', txt2:'Wondrala:Kochi'),
                          SizedBox(width: 15,),
                          events(img:Image(image: AssetImage('assets/clone/imagica.png'),fit: BoxFit.fill,),
                              txt:'Sat,24 Feb onwards', txt1:'Imagicaa Theme\nPark', txt2:'Imagicaa Theme Park\n(Khopoli):Mumbai'),
                          SizedBox(width: 15,),
                          events(img:Image(image: AssetImage('assets/clone/wpl.png'),fit: BoxFit.fill,),
                              txt:'Mon,14 Apr', txt1:'TATA WPL 2024', txt2:'Multiple Venues'),
                          SizedBox(width: 15,),
                          events(img:Image(image: AssetImage('assets/clone/imagica.png'),fit: BoxFit.fill,),
                              txt:'Sat,24 Feb onwards', txt1:'Imagicaa Theme\nPark', txt2:'Imagicaa Theme Park\n(Khopoli):Mumbai'),
                          SizedBox(width: 15,),
                          events(img:Image(image: AssetImage('assets/clone/joytown.png'),fit: BoxFit.fill,),
                              txt:'Fri,12 Apr', txt1:'BMW Joytown\n2024', txt2:'Mahalaxmi Race\nCourse:Mumbai'),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: index,
        onTap: (tap){
          setState(() {
            index=tap;
          });
        },
        items: [
         BottomNavigationBarItem(icon:Icon(Icons.home,),label: 'Home') ,
          BottomNavigationBarItem(icon:Icon(FontAwesomeIcons.video),label:'Movies') ,
          BottomNavigationBarItem(icon:Icon(Icons.live_tv_rounded,),label:'Events') ,
          BottomNavigationBarItem(icon:Icon(Icons.person,),label:'Profile') ,
        ],
      ),
    );
  }
}