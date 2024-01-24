import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../EpandedTile.dart';

void main(){
  runApp(MaterialApp(
    home:Assignment3(),
    debugShowCheckedModeBanner: false,
  ));
}
class Assignment3 extends StatefulWidget{
  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  var title1=['Kriss Benwat','Rasi Makarov','Gustav Lemelo','BobRyder','Ken Simdada','Kriss Benwat','Rasi Makarov','Gustav Lemelo'];
  var subtiltle1=['Good to know','its been a while','Hey where are you?','Its over','You are welcome','its been a while','Hey where are you?','its been a while',];
  var trailing1=['today','today','Yesturday','28 Jan','24 Jan','20 Jan','12Jan','13Jan'];
  var img=['assets/Icons/p1.png','assets/Icons/p2.png','assets/Icons/p3.png','assets/Icons/p4.png','assets/Icons/p5.png','assets/Icons/p2.png','assets/Icons/p4.png','assets/Icons/p5.png'];
  var Screen=[
    ExpandedTile(),
    ExpandedTile(),
    ExpandedTile(),
    ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight:150,
            title:Text('Conversations',style: TextStyle(color: Colors.black,fontSize:30,fontWeight:FontWeight.bold),),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right:30),
                child: ElevatedButton(
                    onPressed:(){}, child:Row(
                    children: [
                       Text('+',style: TextStyle(color: Colors.red),),
                       Text('   Add New',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                )),
              )
            ],
            flexibleSpace:ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:70),
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(30),
                      color: Colors.grey[100],
                    ),
                    child: TextField(
                      decoration:InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
         SliverList(delegate:SliverChildBuilderDelegate((context, index){
           return Card(
               child:ExpansionTile(
                 title:Text(title1[index]),
                 subtitle:Text(subtiltle1[index]),
                 leading: CircleAvatar(backgroundImage:AssetImage(img[index]),),
                 trailing: Text(trailing1[index]),
                 children: [
                   ListTile(
                     title:Text('Received',style: TextStyle(color: Colors.blue),),
                     leading:Icon(Icons.call_received,color: Colors.blue,),
                   ),
                   ListTile(
                     title:Text('Missed',style: TextStyle(color: Colors.red),),
                     leading:Icon(Icons.call_missed_sharp,color: Colors.red,),
                   ),
                   ListTile(
                     title:Text('Dialed',style: TextStyle(color: Colors.green),),
                     leading:Icon(Icons.call_made,color: Colors.green,),
                   )
                 ],
               )
           );
         },childCount:title1.length)),
          SliverToBoxAdapter(
            child:Screen[index],
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(borderRadius: BorderRadius.only(topRight:Radius.circular(30),topLeft: Radius.circular(30)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor:Colors.red,
          unselectedItemColor: Colors.grey,
          currentIndex: index,
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.chat),label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.change_circle_outlined),label: 'Channels'),
            BottomNavigationBarItem(icon:Icon(Icons.person),label: 'Profile')
          ],
        ),
      ),
    );
  }
}