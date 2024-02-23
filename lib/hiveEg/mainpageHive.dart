import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  //hive initilization
  await Hive.initFlutter();
  await Hive.openBox('task_box');

  runApp(MaterialApp(home: MyTODo(),));
}
class MyTODo extends StatefulWidget{
  @override
  State<MyTODo> createState() => _MyTODoState();
}

class _MyTODoState extends State<MyTODo> {
  //To strore task from Hive DB
  List<Map<String,dynamic>>task=[];

  //Object creation of Hive
  final tbox=Hive.box('task_box');

  @override

  void initState() {
    super.initState();
    loadTask();
  }

  //creating new data
  Future<void>createTask(Map<String,dynamic>task)async{
    await tbox.add(task);
    loadTask();
  }

  //read all the data
  void loadTask(){
    final data=tbox.keys.map((id){
      final value=tbox.get(id);
      return {'key':id,'name':value['name'],'details':value['details']};
    }).toList();
    setState(() {
      task=data.toList();
    });
  }

  //updating Hive
  Future<void>updateTask(int key,Map<String,dynamic>uptask)async{
    await tbox.put(key,uptask);
    loadTask();
  }

  //deleting Hive data
  Future<void>deleteTask(int key)async{
    await tbox.delete(key);
    loadTask();
  }

  //reading singledata
 Map<String,dynamic>readData(int key){
    final data=tbox.get(key);
    return data;
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: task.isEmpty?Text('NO DATA')

      :ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            title: Text(task[index]['name']),
            subtitle: Text(task[index]['details']),
            trailing: Wrap(
              children: [
                IconButton(onPressed: (){
                  deleteTask(task[index]['key']);
                 },icon: Icon(Icons.delete),),
                IconButton(onPressed:(){
                  showForm(context,task[index]['key']);

                 }, icon:Icon(Icons.edit))
            ]
            ),
          ),
        );
      },itemCount:task.length,),
      floatingActionButton: FloatingActionButton(onPressed:(){
        showForm(context,null);
      },
       child: Icon(Icons.add),)
    );
  }
  final name_controller=TextEditingController();
  final details_controller=TextEditingController();
  void showForm(BuildContext context,int?id){
    if(id!=null){
      final ex_task=task.firstWhere((element) =>element['key']==id);
      name_controller.text=ex_task['name'];
      details_controller.text=ex_task['details'];
    }
    showModalBottomSheet(context: context, builder:(context){
      return Container(
       child: Column(
         children: [
           SizedBox(height: 20,),
           TextField(
             controller: name_controller,
             decoration: InputDecoration(border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(30),),
             hintText: "Task name"),
           ),
           TextField(
             controller: details_controller,
             decoration: InputDecoration(border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(30),),
                 hintText: "Task details"),
           ),
           ElevatedButton(onPressed: ()async{
             if(id==null){
               createTask({'name':name_controller.text,'details':details_controller.text});
             }
             else{
               updateTask(id,{'name':name_controller.text,'details':details_controller.text});
             }
             name_controller.text="";
             details_controller.text="";
             Navigator.of(context).pop();
            }, child:Text(id==null?'createTask':'UpdateTask'))
         ],
       ),

      );
    });
  }
}