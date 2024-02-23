import 'package:firstflutterproject/EgSQFLITE/DBLogin-SignUP.dart';
import 'package:firstflutterproject/EgSQFLITE/Login.dart';
import 'package:firstflutterproject/EgSQFLITE/sqlHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget{
  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  GlobalKey<FormState>fkey=GlobalKey();
  @override

  final name=TextEditingController();
  final email=TextEditingController();
  final password=TextEditingController();
  final cpassword=TextEditingController();
  bool show=true;

  Widget build(BuildContext context) {
    var dsize=MediaQuery.of(context).size;
    var dheight=dsize.height;
    var dwidth=dsize.width;

    void addDatabase(String name,String email,String password)async{
      var id=await sqlHelper.addDatabase(name, email, password);
      if(id!=null){
        Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>DBLogin()));
      }
      else{
        Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>DBLoginSignUp()));
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Registration completed')));
      //refreshData();
    }
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Registration Form',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
      ),
      body: SingleChildScrollView(
        child : Container(
          height: dheight,width: dwidth,
          child: Form(
            key: fkey,
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextFormField(
                  validator:(name){
                    if(name!.isEmpty){
                      return "Name is required.";
                    }
                  },
                  controller: name,
                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),),
                      hintText: 'Name'
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  validator: (email){
                    if(email!.isEmpty||!email.contains('@')||!email.contains('.')){
                      return "Enter valid email id";
                    }
                  },
                  controller: email,
                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),),
                      hintText: 'Email'
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: show,
                  obscuringCharacter: '*',
                  validator: (pasword){
                    if(pasword!.isEmpty||pasword.length<6){
                      return "Enter valid password";
                    }
                  },
                  controller: password,
                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),),
                      hintText: 'Password',
                    suffixIcon: IconButton(onPressed:(){
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
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: cpassword,
                  validator: (cpasowrd){
                    if(cpasowrd!.isEmpty||cpasowrd.length<6){
                      return "Password must be greater than 6";
                    }
                    else if(password.text!=cpassword.text){
                      return "password mismatch";
                    }
                  },

                  decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),),
                      hintText: 'ConfirmPassword'
                  ),
                ),

                SizedBox(height: 10,),
                ElevatedButton(onPressed: () async {
                  final valid=fkey.currentState!.validate();
                  if(valid){
                    String Uemail=email.text;
                    var data=await sqlHelper.userFound(Uemail);
                    if(data.isNotEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('User already exists...')));
                    }
                    else{
                       addDatabase(name.text,email.text,password.text);
                    }
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(action: SnackBarAction(label:'UNDO', onPressed:(){}),
                      content: Text('Invalid user name/Password'),));
                  }

                 }, child: Text('Register')),

              ],
            ),
          ),
        ),
      ),
    );
  }

}