import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:NewUi(),));
}
class NewUi extends StatefulWidget{
  @override
  State<NewUi> createState() => _NewUiState();
}

class _NewUiState extends State<NewUi> {
  var size,ht,wt;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    ht=size.height;
    wt=size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: ht,width: wt,
          ),
          Positioned(height:ht/4,width: wt,
              child: ClipRRect(borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100,),bottomRight: Radius.circular(100)),
                  child: Container(color:Colors.blue,
                  ))),
          Positioned(left: 80,top: 250,
            child: Container(height: ht,width: 350,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white70),
              child: Column(
                children: [
                  Text('Login',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(height:20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right:25),
                    child: TextField(
                      decoration: InputDecoration(
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        hintText: 'UserName',
                        helperText: 'Username should be the  name of the student'
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right:25),
                    child: TextField(
                      decoration: InputDecoration(
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        hintText: 'Password',
                        helperText: 'Password should be the admission number',
                        suffixIcon:Icon(Icons.visibility_off_sharp)
                      ),),
                  ),
                  SizedBox(height: 10,),
                  TextButton(onPressed: (){}, child:Text('Forgot password?'))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 550,left: 220),
            child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Colors.blue),
                onPressed:(){} , child:Text('LogIn',style:TextStyle(color: Colors.white),)),
          )
        ],
      ),
    );
  }
}