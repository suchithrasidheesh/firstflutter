import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: TableEg(),
  ));
}
class TableEg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(borderRadius:BorderRadius.circular(30),color: Colors.pink[100],border: Border.all(color: Colors.cyan)),
          child: DataTable(
            columnSpacing:8,
              dividerThickness: 5,
              columns: [
            DataColumn(label: Text('Name',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),)),
            DataColumn(label: Text('Age',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),)),
            DataColumn(label: Text('Salary',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),)), 
                DataColumn(label:Text('Qualification',style:TextStyle(fontSize:20,fontWeight: FontWeight.bold),))
          ],
              rows:[
                DataRow(cells:[
                  DataCell(Text('Arun')),
                  DataCell(Text('28')),
                  DataCell(Text('40000')),
                  DataCell(Text('MCA'))
                  
                ] ),
                DataRow(cells:[
                  DataCell(Text('Varun')),
                  DataCell(Text('30')),
                  DataCell(Text('30000')),
                  DataCell(Text('BTECH'))
                ] ),
                DataRow(cells:[
                  DataCell(Text('Aruna')),
                  DataCell(Text('25')),
                  DataCell(Text('20000')),
                  DataCell(Text('BCA'))
                ] ),
                DataRow(cells:[
                  DataCell(Text('Keerthi')),
                  DataCell(Text('28')),
                  DataCell(Text('50000')),
                  DataCell(Text('MTECH'))
                ] )
              ]),
        ),
      ),
    );
  }

}