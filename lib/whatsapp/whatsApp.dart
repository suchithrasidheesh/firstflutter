import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeWhatsApp.dart';

void main(){
  runApp(DevicePreview(builder:(context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: whatsApp(),
  )));
}
class whatsApp extends StatefulWidget{
  @override
  State<whatsApp> createState() => _whatsAppState();
}

class _whatsAppState extends State<whatsApp> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:3),(){
      Navigator.push(context,MaterialPageRoute(builder:(context)=>HomeWhatsApp()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:100),
              child: Image(image: AssetImage('assets/Icons/whatsapp.png'),height: 80,width: 80,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text('WhatsApp',style: TextStyle(fontSize:40),),
            ),
          ],
        ),
      ),
    );
  }
}