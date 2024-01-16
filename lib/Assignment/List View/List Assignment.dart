import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    isToolbarVisible: true,
      builder: (BuildContext context)=>MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: ListAssignment(),
      )));
}
class ListAssignment extends StatelessWidget{
  var food=['Pasta','Maggi','Cake','Pancake','Pizza','Burger','Fries'];
  var time=['30mins','2mins','45mins','10mins','60mins','35mins','40mins'];
  var image=['assets/Icons/pasta.png','assets/Icons/maggi.png','assets/Icons/cake.png','assets/Icons/pancake.png','assets/Icons/pizza.png','assets/Icons/burger.png','assets/Icons/fries.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Recipe Book',),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            leading:CircleAvatar(backgroundImage: AssetImage('${image[index]}')),
            title: Text('${food[index]}',style: TextStyle(color: Colors.blueAccent)),
            trailing: Text('${time[index]}',style: TextStyle(color: Colors.blueAccent)),
          ),

        );
      },itemCount:image.length,),
    );
  }

}