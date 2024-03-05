import 'package:firstflutterproject/EgSQFLITE/sqlHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'adminAddItem.dart';

class DBHome1 extends StatefulWidget{
  @override
  State<DBHome1> createState() => _DBHome1State();
}

class _DBHome1State extends State<DBHome1> {
  var data;
  void delte(int id)async{
    await sqlHelper.delteuser(id);
    refresh();
  }
  @override
  void initState() {
    refresh();
    super.initState();
  }
  void refresh()async{
    var mydata= await sqlHelper.getAll();
    setState(() {
      data=mydata;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70,),
          Row(
            children: [
              ElevatedButton(onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>adminAddItem()));
              }, child:Text('AddData'),),
              SizedBox(width: 10,)
            ],
          ),
          Expanded(
            child: ListView.builder(itemBuilder:(context,index){
              if(data==null){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('User data empty')));
                    }
                    else{
                      return Card(
                        child: ListTile(
                          title: Text('${data[index]['name']}'),
                          trailing: IconButton(onPressed: (){
                            delte(data[index]['id']);
                            },icon:Icon(Icons.delete),),
                        ),
                      );
                    }
            },itemCount:data.length),
          ),

        ],
      ),
    );
  }
}