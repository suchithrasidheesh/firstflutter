import 'package:firstflutterproject/Assignment/cls%20assigmnent/4Assignment%20Customwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
    home: Assignment4(),
    debugShowCheckedModeBanner:false,
  ));
}
class Assignment4 extends StatelessWidget{
  var title=['Privacy','Purchase History','Help & Support','Settings','Invite Friend'];
  var icn=[Icons.privacy_tip,Icons.history,Icons.help,Icons.settings,Icons.group];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:
        Column(
            children: [
              ListTile(tileColor:Colors.white,
                leading:Icon(Icons.arrow_back),
                trailing: Icon(Icons.menu),
              ),
              CircleAvatar(backgroundImage:AssetImage('assets/Icons/p4.png'),radius: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height:100,),
                  CircleAvatar(backgroundImage: AssetImage('assets/Icons/fb.png'),),
                  SizedBox(width:20,),
                  FaIcon(FontAwesomeIcons.google,color: Colors.red,size: 40,),
                  SizedBox(width:20,),
                  CircleAvatar(backgroundImage: AssetImage('assets/Icons/twi.png'),),
                  SizedBox(width:20,),
                  CircleAvatar(backgroundImage: AssetImage('assets/Icons/linldlin.png'),),


                ],
              ),
              Column(
                children: [
                  Text('Chromicle',style: TextStyle(fontWeight: FontWeight.bold,fontSize:25),),
                  Text('@amFOSS',style: TextStyle(fontSize:15),),
                  SizedBox(height:20),
                  Text('Moblie App Developer and Open',style: TextStyle(fontSize:20),),
                  Text('source enthusiastic',style:TextStyle(fontSize:20),)
                ],
              ),
              SizedBox(height: 30,),
              // SizedBox(height: 350,
              //   child: ListView.builder(itemBuilder:(context,index){
              //     return ListTile(
              //       title:Text(title[index]),
              //       leading: Icon(icn[index]),
              //       trailing:Icon(Icons.arrow_forward_ios) ,
              //     );
              //     },itemCount:title.length),)
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      ProjectTile(txt:'Privacy', icon:Icon(Icons.privacy_tip)),
                      SizedBox(height: 20,),
                      ProjectTile(txt: 'Purchase History', icon:Icon(Icons.history)),
                      SizedBox(height: 20,),
                      ProjectTile(txt: 'Help and Support', icon: Icon(Icons.help)),
                      SizedBox(height: 20,),
                      ProjectTile(txt: 'Settings', icon:Icon(Icons.settings))
                      
                    ],
                  ),
                  
                ),
              )
            ],),
      ),
    );
  }
}