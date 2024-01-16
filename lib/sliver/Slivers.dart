import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Slivers(),));
}
class Slivers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var title=['arun','ammu','neena','minnu','suchi','sidhi'];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.cyan,
            floating: true,
            pinned: true,
            title: Text('Custom Appbar'),
            actions: [
              IconButton(onPressed:(){}, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
            ],
            bottom: AppBar(
              backgroundColor: Colors.cyan,
              elevation: 0,
              title: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.camera_alt),
                    suffixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              color: Colors.greenAccent,
              child: ListTile(
                title: Text('${title[index]}'),
                trailing: Icon(Icons.cached),
              ),
            );

          },childCount: title.length))
        ],
      ),
    );
  }

}