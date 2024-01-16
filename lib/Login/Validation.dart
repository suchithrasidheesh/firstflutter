import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../List view/HomePage.dart';
import 'NewReg.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Validation(),
  ));
}
class Validation extends StatefulWidget{
  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  GlobalKey<FormState>formKey=GlobalKey();
  bool show=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 30,),
              Center(child: Image(image: AssetImage('assets/Icons/home.png'),height: 100,width: 100,)),
              Padding(
                padding: const EdgeInsets.only(top: 60,left: 10,right: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'username',
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (username){
                    if(username!.isEmpty||!username.contains('@')||!username.contains('.')){
                      return 'Enter a valid user name';
                    }
                    else{
                      return null;
                    }
                  }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10,right: 60,top: 70),
                child: TextFormField(
                  obscureText: show,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        if (show) {
                          show = false;
                        }
                        else {
                          show = true;
                        }
                      },);
                    },icon:Icon(show==true?Icons.visibility_off_sharp:Icons.visibility_sharp),),

                    labelText: 'password',
                  ),
                  validator: (password){
                    if(password!.isEmpty||password.length<8){
                      return 'Enter valid password ';
                    }
                  }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: ElevatedButton(onPressed: (){
                  final valid=formKey.currentState!.validate();
                  if(valid){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));
                  }
                }, child: Text('Login'),),
              ),
              TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>NewReg()));
              }, child: Text('Not a user!create anew account.')),
            ],
          ),
        ),
      ),
    );
  }
}

