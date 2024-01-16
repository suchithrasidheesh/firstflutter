import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Register.dart';
import 'newpage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loginassignment(),));
}
class Loginassignment extends StatefulWidget{
  @override
  State<Loginassignment> createState() => _LoginassignmentState();
}

class _LoginassignmentState extends State<Loginassignment> {
  GlobalKey<FormState> fkey=GlobalKey();
  bool show=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('Login Page')),
      ),
      body:Container(
          child:Form(
            key: fkey,
             child:Column(
                children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 60),
                       child: TextFormField(
                        decoration: InputDecoration(
                            border:OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                            labelText: 'UserName',
                            prefixIcon: Icon(Icons.person),
                       ),
                         validator:(UserName){
                          if(UserName!.isEmpty||!UserName.contains('@')||!UserName.contains('.')){
                            return 'Enter a valid UserName';
                          }
                         },
                       ),
                     ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: TextFormField(
                        obscureText:show,
                        obscuringCharacter:'*',
                      decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                                labelText: 'Password',
                                prefixIcon: Icon(Icons.password),
                                suffixIcon: IconButton(onPressed:(){
                                  setState(() {
                                    if(show){
                                      show=false;
                                    }
                                    else{
                                      show=true;
                                    }
                                  });
                                }, icon:Icon(show==true?Icons.visibility_off_sharp:Icons.visibility))
                      ),
                      validator: (password){
                          if(password!.isEmpty||password.length<6){
                            return 'Enter a valid password';
                          }
                      },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:40),
                      child: ElevatedButton(onPressed:(){
                        final valid=fkey.currentState!.validate();
                        if(valid){
                          Navigator.pushReplacement((context),MaterialPageRoute(builder:(context)=>Register()));
                        }
                        },style: ElevatedButton.styleFrom(backgroundColor: Colors.blue), child:Text('Login')),
                    ),
                    TextButton(onPressed:(){
                      Navigator.pushReplacement((context),MaterialPageRoute(builder: (context)=>newpage()));
                      }, child:Text('Not a user create a new account!')),
            ],
          ),),

      ));
  }
}