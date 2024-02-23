import 'package:firstflutterproject/sharedpreference/Login%20sharedprefeence.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHome extends StatefulWidget{
  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
   late SharedPreferences data;
   String? username;
   @override
  void initState() {
    fetch();
    super.initState();
  }
  void fetch()async{
     data=await SharedPreferences.getInstance();
     setState(() {
       username=data.getString('username')!;
     });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hai welcome $username',style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: (){
              data.setBool('newuser',true);
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SharedLogin()));
              }, child:Text('Logout'))
          ],
        ),
      ),
    );
  }
}