import 'package:firstflutterproject/EgSQFLITE/DBLogin-SignUP.dart';
import 'package:firstflutterproject/EgSQFLITE/Registration.dart';
import 'package:firstflutterproject/EgSQFLITE/sqlHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home1.dart';
import 'Home2.dart';

class DBLogin extends StatefulWidget{
  @override
  State<DBLogin> createState() => _DBLoginState();
}

class _DBLoginState extends State<DBLogin> {
  GlobalKey<FormState>fmkey=GlobalKey();
  @override
  final uname=TextEditingController();
  final pass=TextEditingController();
  bool txt=true;
  void logincheck(String username,String password)async{
    if(username=='suchi.kp@gmail.com'&&password=='12345678'){
      Navigator.push(context,MaterialPageRoute(builder:(context)=>DBHome1()));
    }
    else{
      var data=await sqlHelper.CheckLogin(username,password);
        if(data.isNotEmpty){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>DBHome2(data1:data)));

          print("LoginSuccess");
        }
        else if(data.isEmpty){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>DBLoginSignUp()));
          print("LoginFailed");
        }

    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:80),
        child: ClipRRect(borderRadius: BorderRadius.circular(30),
          child: Container(
            color: Colors.grey[300],
            child: Form(
              key: fmkey,
              child: Column(
                children: [
                  Center(child: Text('Login',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.purple),)),
                  SizedBox(height: 50,),
                  TextFormField(
                    controller: uname,
                    validator: (uname){
                      if(uname!.isEmpty||!uname.contains('@')||!uname.contains('.')){
                        return 'Enter valid email-id name';
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                      hintText: 'UserName',
                      helperText: 'Username should be valid e-mail id.'

                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    obscureText: txt,
                    obscuringCharacter: '*',
                    controller: pass,
                    validator: (pass){
                      if(pass!.isEmpty||pass.length<6){
                        return 'Enter valid password';
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        hintText: 'Password',
                        suffixIcon:IconButton(onPressed:(){
                          setState(() {
                            if(txt){
                              txt=false;
                            }
                            else{
                              txt=true;
                            }
                          });

                        }, icon:Icon(txt==true?Icons.visibility_off_sharp:Icons.visibility_sharp)),


                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    final valid=fmkey.currentState!.validate();
                    if(valid){
                      logincheck(uname.text,pass.text);
                    }
                   }, child: Text('Login')),
                  SizedBox(height: 10,),
                  TextButton(onPressed:(){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Registration()));
                  }, child: Text('Not a user? Register Here!!!'))

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}