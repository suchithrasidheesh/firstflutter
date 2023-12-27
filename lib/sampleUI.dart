import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    isToolbarVisible: true,
      builder: (BuildContext context)=>MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: SampleUi(),
      )
  ));
}
class SampleUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.yellow,
        backgroundColor: Colors.redAccent,
        title: Text("Sample page", style: TextStyle(fontSize:40),)
      ),
      body: Container(height: double.infinity,width: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.yellow,
            Colors.green,
            Colors.pink],
            begin: Alignment.centerRight,
            end:Alignment.bottomRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.accessibility_sharp,size: 80,color: Colors.redAccent,),
            Text("Flutter",
              style: TextStyle(color: Colors.greenAccent,fontSize: 25,fontWeight: FontWeight.w900,fontStyle: FontStyle.italic),
            ),
          ],
        ),),
    );
  }

}
