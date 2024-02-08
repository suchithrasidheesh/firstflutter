

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '6Light.dart';

class LivingRoom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 800,
            color: Colors.brown[300],
            child: Stack(
              children:[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_back,color: Colors.white,),
                          SizedBox(width: 140,),
                          Text('Living Rooms',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 190,),
                          Icon(Icons.hexagon_outlined,color: Colors.white,),
                      ],),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 60,left: 40),
                  child: ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 50,width: 400,
                      color: Colors.white,
                      child:Stack(
                          children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 5),
                                child: Column(
                                  children: [
                                    Row(
                                      children:[
                                        Icon(Icons.egg_rounded,size:15,),
                                        Text("25'C",style: TextStyle(fontSize:15),),
                                    ]),
                                    Text('Temperature',style: TextStyle(fontSize:10)),
                                ]),
                              ),
                              SizedBox(width: 40,),
                              Padding(
                                padding: const EdgeInsets.only(top: 5,left: 40),
                                child: Column(
                                      children: [
                                        Row(
                                            children:[
                                              Icon(Icons.egg_rounded,size: 15,),
                                              Text("57'C",style: TextStyle(fontSize:15)),
                                            ]),
                                        Text('Humidity',style: TextStyle(fontSize:10)),
                                      ],),
                              ),
                              SizedBox(width: 60,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,left:60),
                                    child: Column(
                                      children: [
                                        Row(
                                            children:[
                                              Icon(Icons.egg_rounded,size: 15,),
                                              Text("80'C",style: TextStyle(fontSize:15)),
                                            ]),
                                        Text('Lightining',style: TextStyle(fontSize:10))
                                      ],),
                                  ),
                            ]),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:130,left: 80,),
                  child: Image(image: AssetImage('assets/Icons/chart.png'),height:150,),
                ),

                   Padding(
                            padding: const EdgeInsets.only(top:300,),
                            child: ClipRRect(borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                              child: Container(height: double.infinity,
                                    color: Colors.grey[300],
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top:30),
                                          child: Row(
                                            children: [
                                              SizedBox(width:50,),
                                              Text('Devices',style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(width:350,),
                                              Text('+',style: TextStyle(fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                        ),
                                        shape1(context),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: ElevatedButton(onPressed:(){},
                                              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                                              child:Text('Turn off all devices.',style: TextStyle(color: Colors.white),)),
                                        ),
                                      ],
                                    )
                                   
                                        
                              
                                      
                                
                              )))
      ]))]
      ));
      
  }

  shape1(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 40),
              child: ClipRRect(borderRadius: BorderRadius.circular(30),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Light()));
                  },
                  child: Container(
                    height: 100,width: 150,color: Colors.orange[300],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.lightbulb),
                        Text('Light'),
                        Text("80'C")
                      ],
                    ),
                  ))
              ),
            ),
            SizedBox(width: 50,),
            Padding(
              padding: const EdgeInsets.only(top: 40,),
              child: ClipRRect(borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 100,width: 150,color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.airFreshener),
                      Text('AC'),
                      Text("80'C")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 40),
              child: ClipRRect(borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 100,width: 150,color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.wifi),
                      Text('WiFi'),
                      Text("on")
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 50,),
            Padding(
              padding: const EdgeInsets.only(top: 40,),
              child: ClipRRect(borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 100,width: 150,color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.tv),
                      Text('SmartTV'),
                      Text("on")
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
  
}