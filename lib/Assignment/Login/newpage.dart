import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loginassignment.dart';

class newpage extends StatefulWidget{
  @override
  State<newpage> createState() => _newpageState();
}

class _newpageState extends State<newpage> {
  GlobalKey<FormState>fmkey=GlobalKey();
bool show=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: fmkey,
          child: Column(
            children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius:BorderRadius.circular(30)),
                        labelText: 'UserName',
                      ),
                      validator:(UserName){
                        if(UserName!.isEmpty||!UserName.contains('@')||!UserName.contains('.')){
                          return 'Enter Valid UserName';
                        }
                      },
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: TextFormField(
                  obscureText: show,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    labelText: 'Password',
                    suffixIcon:IconButton(onPressed: (){
                      setState(() {
                        if(show){
                          show=false;
                        }
                        else{
                          show=true;
                        }
                      });
                        }, icon:Icon(show==true?Icons.visibility_off_sharp:Icons.visibility_sharp))
                ),
                  validator:(Password) {
                    if (Password!.isEmpty || Password.length < 6) {
                      return 'Enter a valid PassWord';
                    }
                  }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: TextFormField(
                  obscureText: show,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    labelText: 'Confirm Password',
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(show){
                          show=false;
                        }
                        else{
                          show=true;
                        }
                      });
                    }, icon:Icon(show==true?Icons.visibility_off_sharp:Icons.visibility_sharp))
                  ),
                  validator: (ConfirmPassword){
                    if(ConfirmPassword!.isEmpty||ConfirmPassword.length<6){
                      return'Enter Correct Password';
                    }
                  },

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ElevatedButton(onPressed: (){
                  final v=fmkey.currentState!.validate();
                  if(v) {
                    Navigator.pushReplacement((context), MaterialPageRoute(
                        builder: (context) => Loginassignment()));
                  }
                   },style: ElevatedButton.styleFrom(backgroundColor: Colors.blue), child: Text('Register')),
              )
            ],
              )
          ),
        ),
    );
  }
}