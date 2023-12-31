import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListBuilder(),
  ));
}
class ListBuilder extends StatelessWidget{
  var title=['arun','ammu','neena','minnu','suchi','sidhi'];
  var phone=['1234567890','2345678901','3456789012','4567890123','5678901234','6789012345'];
  var colors=[Colors.blue,Colors.redAccent,Colors.greenAccent,Colors.yellowAccent,Colors.pinkAccent,Colors.purpleAccent];
  var image=['assets/Icons/home.png','assets/Icons/home.png','assets/Icons/home.png','assets/Icons/home.png','assets/Icons/home.png','assets/Icons/home.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListBuilder'),
        leading: const Icon(Icons.menu),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          color:colors[index],
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
            title: Text(title[index]),
            subtitle: Text(phone[index]),
            trailing: const Icon(Icons.call),
          ),
        );
      },itemCount:title.length,),
    );
  }
}