import 'package:f_toggle_button/f_toggle_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Light extends StatefulWidget{
  @override
  State<Light> createState() => _LightState();
}

class _LightState extends State<Light> {

  int val=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.brown[300],
          ),
          Row(
            children: [
              Icon(Icons.arrow_back,color: Colors.white,),
              SizedBox(width: 180,),
              Text('Light',style: TextStyle(color: Colors.white),)
            ],
          ),
          Positioned(top: 50,left: 10,
              child: Text('Power',style: TextStyle(color: Colors.white,fontSize:15),)),


          Positioned(top:80,left: 10,
            child: FToggleButton(
              isEnable: true,
              onChangeStatus: (bool value) {
                },
              bgCircleDisable: Colors.white,
              bgCircleEnable: Colors.orange,
              bgDisable: Colors.white,
              borderColorEnable: Colors.white,
              borderColorDisEnable: Colors.white,
            ),
          ),
          Positioned(top:50,right: 30,
              child: Image(image: AssetImage('assets/Icons/light.png'),height: 170,width:170,)
          ),
          Positioned( top: 150,left: 20,
            child: Column(
              children: [
                Text('80%',style: TextStyle(color: Colors.white,fontSize:20),),
                Text('brightness',style: TextStyle(color: Colors.white,fontSize:10),),
              ],
            ),
          ),
          Positioned(top: 200,left: 20,
              child: Text('Intensity',style:TextStyle(color: Colors.white,fontSize:15),)),

          Positioned(top: 220,left: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lightbulb,color: Colors.white,),
                Slider(value: val.toDouble(), onChanged:(value){
                  setState(() {
                   val= value.toInt();
                  });
                },max: 100,min: 0,
                thumbColor: Colors.white,
                  activeColor: Colors.white,
                ),
                Icon(Icons.lightbulb_outlined,color: Colors.white,)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:300),
            child: ClipRRect(borderRadius: BorderRadius.circular(30),
              child: Container(
                height: double.infinity,
                color: Colors.grey[300],
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Schedule'),
                          SizedBox(width: 350,),
                          Text('+',style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:60,left: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('From'),
                          SizedBox(width: 10,),
                          Text('6:00 PM',style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 10,),
                          Text('to'),
                          SizedBox(width: 10,),
                          Text('11:00 PM',style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 150,),
                          Icon(Icons.delete,size: 20,color: Colors.grey[500]),
                          SizedBox(width: 10,),
                          Icon(Icons.edit,size: 20,color: Colors.grey[500],),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:400),
            child: ClipRRect(borderRadius: BorderRadius.circular(30),
              child: Container(
                color: Colors.white,height: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:30,left:20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Usage Monday'),
                          SizedBox(width: 250,),
                          Text('0.5 KWH',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:60,left:10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Usage this month'),
                          SizedBox(width: 200,),
                          Text('6 KWH',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:90,left:20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Total usage'),
                          SizedBox(width: 250,),
                          Text('125',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}