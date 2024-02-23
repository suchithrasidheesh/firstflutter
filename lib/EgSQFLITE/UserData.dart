import 'package:firstflutterproject/EgSQFLITE/Home2.dart';
import 'package:firstflutterproject/EgSQFLITE/sqlHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class UserData extends StatefulWidget{
  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  var data;

  @override
  void initState() {
    refresh();
    super.initState();
  }
  void refresh()async{
    var mydata= await sqlHelper.GetData();
    setState(() {
      data=mydata;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemBuilder:(context,index){
        return Card(
          child: Column(
            children: [
              Text(data[index]['pname']),
              Text(data[index]['pprice']),
              Text(data[index]['pdetails']),
            ],
          ),
        );

      },itemCount:data.length),
    );
  }
}