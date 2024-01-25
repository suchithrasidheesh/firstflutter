import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height:double.infinity,width:double.infinity,
          ),
          Positioned(height: 200,width: 500,
              child: ClipRRect(borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100,),bottomRight: Radius.circular(100)),
                  child: Container(color:Colors.blue,
                    child:SvgPicture.asset('assets/svg/person.svg',height: 100,width: 50,)
                  ))),
          SvgPicture.asset('assets/svg/star.svg',height: 20,width: 20,),
          Positioned(height: 50,width: 50,top: 20,left: 40,
              child: SvgPicture.asset('assets/svg/star.svg')),
          Positioned(left: 300,top: 50,
            child: Column(//mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Oder and ',style: TextStyle(fontSize:20,fontWeight:FontWeight.bold,color: Colors.white),),
                Text('Get to door step',style: TextStyle(fontSize:10,fontWeight:FontWeight.bold,color: Colors.white),),
              ],),),
          Positioned(right:50,top: 90,
              child: SvgPicture.asset('assets/svg/tree.svg',height: 80,width: 50,)),
          Positioned(height: 30,width: 50,top: 50,right: 60,
              child: SvgPicture.asset('assets/svg/star.svg')),
          Positioned(height: 50,width: 50,top: 90,left: 70,
              child: SvgPicture.asset('assets/svg/star.svg')),
          Positioned(top: 100,left:30,
              child: SvgPicture.asset('assets/svg/star.svg',height: 20,width: 20,)),
          SvgPicture.asset('assets/svg/star.svg',height: 20,width: 20,),
          Positioned(left: 80,top: 250,
            child: Container(height: 250,width: 350,
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
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text('User name should be a valid email.',style:TextStyle(fontSize:10,color: Colors.redAccent[100]),),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right:25),
                    child: TextField(
                      decoration: InputDecoration(
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        hintText: 'Password',
                        suffixIcon:Icon(Icons.visibility_off_sharp)
                      ),),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 8),
                    child: Text('Password should contain one Uppercase letter, one Special-character,one Digit and 6-digit long.',style:TextStyle(fontSize:10,color: Colors.redAccent[100]),),
                  ),
                ],
              ),
            ),
          ),
          Positioned(top: 500,right: 50,
              child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Colors.blue),
                  onPressed:(){} , child:Text('SignIn',style:TextStyle(color: Colors.white),)))
        ],
      ),
    );
  }
}