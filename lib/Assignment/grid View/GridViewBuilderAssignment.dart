import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    home: GridViewBuilderAssignment(),
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
  )));
}
class GridViewBuilderAssignment extends StatelessWidget{
  var title=['Home','Email','Alarm','Wallet','Backup','Book','Camera','Person','Print','Phone','Notes','Music'];
  var colors=[Colors.orangeAccent,Colors.grey,Colors.brown,Colors.pink,Colors.grey[500],Colors.greenAccent,Colors.purple,Colors.brown[500],
    Colors.green,Colors.pink[300],Colors.grey[300],Colors.grey[200]];
  var Iconss=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,Icons.book,Icons.camera_alt,Icons.person,Icons.print,Icons.phone,
    Icons.notes,Icons.music_note];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Grid View',style: TextStyle(color: Colors.white),),
        leading: Icon(Icons.arrow_back,color: Colors.white,),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3,mainAxisSpacing:10,crossAxisSpacing:10),
          itemBuilder:(context,index){
          return Container(
            height: 30,
            width: 25,
            color:colors[index],
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Icon(Iconss[index]),
                  Text("${title[index]}")
                ],
              ),
            ),
          );
          },itemCount: title.length,),
    );
  }
  
}
