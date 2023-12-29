import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListSeperator(),
  ));
}
class ListSeperator extends StatelessWidget{
  var title=['arun','ammu','neena','minnu','suchi','sidhi'];
  var phone=['1234567890','2345678901','3456789012','4567890123','5678901234','6789012345'];
  var colors=[Colors.blue,Colors.redAccent,Colors.greenAccent,Colors.yellowAccent,Colors.pinkAccent,Colors.purpleAccent];
  var image=['assets/Icons/home.png','assets/Icons/home.png','assets/Icons/home.png','assets/Icons/home.png','assets/Icons/home.png','assets/Icons/home.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('ListSeperator'),
        leading: Icon(Icons.menu),
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
          color: colors[index],
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('${image[index]}'),),
            title: Text('${title[index]}'),
            subtitle: Text('${phone[index]}'),
            trailing: Icon(Icons.call),
          ),
        );

      }, separatorBuilder:(context,index){
        return Divider(
          thickness: 3,
          color: Colors.cyan,
       );
      }, itemCount:title.length),
    );
  }

}