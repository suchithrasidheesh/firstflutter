import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN PAGE',
            style: TextStyle(color: Colors.cyan, fontSize: 20)),
      ),
      body: Container(
        color: Colors.cyan[300],
        child: Column(
          children: [
            Text('LOGIN', style: TextStyle(color: Colors.blue, fontSize: 30)),
            Padding(
              padding: const EdgeInsets.only(
                  left: 60, right: 60, top: 60, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'User name',
                    labelText: 'Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 60, right: 60, top: 10, bottom: 30),
              child: TextField(
                obscureText: showpass,
                obscuringCharacter:'*' ,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed:(){
                    setState(() {
                      if(showpass){
                        showpass=false;
                      }
                      else{
                        showpass=true;
                      }
                    });
                  }, icon:Icon(showpass==true?Icons.visibility_off_sharp:Icons.visibility_sharp), ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: 'Password',
                  labelText: 'password',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      foregroundColor: Colors.black54),
                )),
            TextButton(
                onPressed: () {},
                child: Text('Not a user! create a new accound')),
          ],
        ),
      ),
    );
  }
}
