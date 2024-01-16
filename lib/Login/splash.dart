import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'ICONS',
    debugShowCheckedModeBanner: false,
    home: Splash(),
  )
  );
}
class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("SPLASH",style: TextStyle(fontSize: 70,color: Colors.pink),)),
      ),
      body: Container(width: double.infinity,height: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://th.bing.com/th/id/OIP.l_E3bxLyRhpWwUH1ICfRIgHaEK?w=328&h=185&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
            fit: BoxFit.cover)),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/Icons/fb icon.png"),height: 100,width: 100,),
          Text('FACEBOOK',style:TextStyle(color: Colors.red,fontSize: 50),),

        ],

        ),
      ),
    );
  }

}