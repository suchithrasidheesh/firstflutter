import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: ListviewAssignment(),
  )));
}
class ListviewAssignment extends StatelessWidget{
  var images=['assets/Icons/Tudo1.png','assets/Icons/Tudo2.png','assets/Icons/Tudo1.png','assets/Icons/Tudo1.png'];
  var name=['TUDO One','TUDO Two','TUDO SEVEN','TUDO Eight'];
  var title=['ASD12345','asdf1234','ASD1234','ASDF1321'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        title: Center(child: Text('BSP Listview',style: TextStyle(color: Colors.black),)),
        actions: [
          Icon(Icons.notes,color: Colors.black,)
        ],
      ),
      body: ListView.separated(itemBuilder:(context,index){
        return Container(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image(image: AssetImage(images[index]),height: 80,width: 80,),
                  ),
                  Column(
                    children: [
                      Text(name[index]),
                      Text(title[index]),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.orange), child:Row(
                          children: [
                            Icon(Icons.star),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('0.0'),
                            ),
                          ],
                        )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 20),
                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.orange), child:Row(
                      children: [
                        Icon(Icons.bike_scooter),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('0.00 Kms'),
                        ),
                      ],
                    )),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.yellow[200],
                    child: Image(image: AssetImage('assets/Icons/map.png'),height:5,width:5,color: Colors.orange[500],),
                  ),
                  Column(
                    children: [
                      Text('Address'),
                      Column(
                        children: [
                          Text('1600 Amphitheatre Pkwy mountain View,CA '),
                          Text('94043,USA'),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],

          ),
        );

      },separatorBuilder:(context,index){
        return Divider(
          thickness: 5,
          color: Colors.grey,
        );
      }, itemCount:4),
    );
  }
}