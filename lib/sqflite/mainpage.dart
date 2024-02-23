

import 'package:firstflutterproject/sqflite/sqlhelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Mainpage(),
  debugShowCheckedModeBanner: false,
  ));

}
class Mainpage extends StatefulWidget{
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  bool isloading=true;
  List<Map<String,dynamic>>note_from_db=[];
  @override
  void initState() {
    refreshData();
    super.initState();
  }
  void refreshData()async{
    final datas=await SQLHelper.readNotes();
    setState(() {
      note_from_db=datas;
      isloading=false;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text('DATABASE')),
      ),
      body: isloading ? Center(child: CircularProgressIndicator()) :
        ListView.builder(itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                tileColor: Colors.cyanAccent[100],
                title: Text(note_from_db[index]['title']),
                subtitle: Text(note_from_db[index]['note']),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                     children: [
                       IconButton(onPressed: () {
                         showForm(note_from_db[index]['id']);
                        }, icon: Icon(Icons.edit)),
                       IconButton(onPressed: () {
                         deleteNote(note_from_db[index]['id']);
                        }, icon: Icon(Icons.delete))
                              ],
                            ),
                ),
                        ),
            );
                },itemCount: note_from_db.length,),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(null),
        child: Icon(Icons.add),
      ),
    );
  }
  final title=TextEditingController();
  final note=TextEditingController();
    void showForm(int ?id) async {
      if(id!=null){
        final existingNote=note_from_db.firstWhere((note) => note['id']==id);
        title.text=existingNote['title'];
        note.text=existingNote['note'];
      }

      showModalBottomSheet(context:context,
          isScrollControlled: true,
          builder: (context) =>
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: TextField(
                        controller: title,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          hintText: 'Title'
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: TextField(
                        controller: note,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          hintText: 'Enter the notes'
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: ElevatedButton(onPressed: () async {
                        if(id==null){
                          await addNote();
                        }
                        if(id!=null){
                          await updateNote(id);
                        }
                       title.text='';
                       note.text='';
                        Navigator.of(context).pop();
                       }, child: Text(id==null?'ADD notes':'Update'),),
                    ),
                  ],
                ),
              ));
    }
    Future addNote()async{
      await SQLHelper.createNote(title.text, note.text);
      refreshData();
    }
    Future updateNote(int id)async{
      await SQLHelper.updateNote(id, title.text, note.text);
      refreshData();
    }
    Future deleteNote(int id)async{
      await SQLHelper.deleteNote(id);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Note deleted')));
      refreshData();
    }
}

