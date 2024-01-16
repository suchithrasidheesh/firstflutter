import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Validation.dart';

class NewReg extends StatefulWidget {
  @override
  State<NewReg> createState() => _NewRegState();
}

class _NewRegState extends State<NewReg> {
  GlobalKey<FormState>FKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Form(
            key: FKey,
            child: Column(
                children: [
                 Padding(padding: const EdgeInsets.only(left: 60, right: 60, top: 100),
                    child: Text('Registration Form', style: TextStyle(color: Colors.red,fontSize: 30),),
                 ),
                  Padding(padding: const EdgeInsets.only(left: 60, right: 60, top:60),
                      child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                      labelText: 'Username',
                      ),
                      validator:(username){
                        if(username!.isEmpty){
                          return 'Enter a valid user name';
                        }
                      }),

                 ),
                  Padding(padding: const EdgeInsets.only(left: 60,right: 60,top: 60),
                      child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                          labelText: 'email'
                      ),
                      validator: (email){
                        if(email!.isEmpty||!email.contains('@')||!email.contains('.')){
                          return'Enter valid email';
                        }
                      },),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 60,right: 60,top: 60),
                      child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                      labelText: 'password'
                     ),
                      validator:(password){
                        if(password!.isEmpty||password.length<6){
                          return'Enter valid password';
                        }
                      },),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 60),
                    child: ElevatedButton(onPressed: (){
                      final valid=FKey.currentState!.validate();
                      if(valid){
                        //showDialog(context: context, builder:(context)=>AlertDialog(content: Text('Finished Registration'),));
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>Validation()));
                      }
                      }, child:Text('Register')),
                  ),
                  ]
            ),
          )),
    );
  }
}