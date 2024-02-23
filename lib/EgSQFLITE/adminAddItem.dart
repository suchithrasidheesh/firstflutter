import 'package:firstflutterproject/EgSQFLITE/UserData.dart';
import 'package:firstflutterproject/EgSQFLITE/sqlHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class adminAddItem extends StatefulWidget{
  @override
  State<adminAddItem> createState() => _adminAddItemState();
}
class _adminAddItemState extends State<adminAddItem> {
  final prod_name=TextEditingController();
  final prod_price=TextEditingController();
  final prod_detail=TextEditingController();
  Widget build(BuildContext context){
  return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70,),
          TextField(
            controller: prod_name,
            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),hintText: 'Product Name'),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: prod_price,
            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),hintText: 'Product Price'),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: prod_detail,
            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),hintText: 'Product Detail'),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            adminAdd(prod_name.text,prod_price.text,prod_detail.text);
          }, child:Text('Add')),
          ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder:(context)=>UserData()));
          }, child:Text('To view the userdata clickhere')),

        ],
      ),
    );
  }

    Future adminAdd(String text1, String text2, String text3) async {
      var id=await sqlHelper.AdminAdd(text1,text2,text3);
      if(id!=null){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Product Added')));
      }
    }
}