import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SharedHome.dart';

void main(){
  runApp(MaterialApp(home: SharedLogin(),
  debugShowCheckedModeBanner: false,
  ));
}
class SharedLogin extends StatefulWidget{
  @override
  State<SharedLogin> createState() => _SharedLoginState();
}

class _SharedLoginState extends State<SharedLogin> {
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  late SharedPreferences data;
  late bool newuser;
  @override
  void initState(){
    checkuser();
    super.initState();
  }
  void checkuser()async{
    data=await SharedPreferences.getInstance();
    newuser=(data.getBool('newuser')??true);
    if(newuser==false){
      Navigator.push(context,MaterialPageRoute(builder:(context)=>SharedHome()));

    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)) ,
                  labelText: 'UserName'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  labelText: 'Password'
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              String uname=username.text;
              String pawrd=password.text;
              if(uname!=''&&pawrd!=''){
                 print('Login successfully');
                data.setString('username',uname);
                data.setBool('newuser',false);
                Navigator.push(context,MaterialPageRoute(
                    builder: (context)=>SharedHome()));
              }
             }, child:Text('Login'))
          ],
        ),
      ),
    );
  }
}