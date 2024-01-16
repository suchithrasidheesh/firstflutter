import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';

void main(){
  runApp(MaterialApp(home: drawer(),));
}
class drawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Icons/11.png'),fit: BoxFit.fill)),
              accountName: Text('minnu',style: TextStyle(color: Colors.cyan),),
              accountEmail: Text("suchi.kp650@gmail.com",style: TextStyle(color: Colors.cyan),),
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/Icons/10.png'),),
              otherAccountsPictures: [CircleAvatar(backgroundImage: AssetImage('assets/Icons/9.png'),)],
            ),
            ListTile(
                leading: GestureDetector(
                  onTap:(){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Home()));
                  },
                    child: Icon(Icons.home)
                ),
                title: Text('Home'),
              ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorite'),
            ),
            ListTile(
              leading:Icon(Icons.update),
              title: Text('Update'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}