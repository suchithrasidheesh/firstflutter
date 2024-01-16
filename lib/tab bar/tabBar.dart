import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: tabBar(),
  debugShowCheckedModeBanner: false,));
}
class tabBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('WhatsApp'),
          actions: [
            PopupMenuButton(itemBuilder:(context){
              return [
                PopupMenuItem(child:Text('Setting')),
                PopupMenuItem(child: Text('Logout')),
                PopupMenuItem(child: Text('Invite')),
              ];
            }),
            Icon(Icons.camera_alt),
            Icon(Icons.search)
          ],
          bottom: TabBar(
            labelColor: Colors.red,
            indicatorColor: Colors.yellow,
            tabs: [
              Tab(
                icon:FaIcon(FontAwesomeIcons.whatsapp),
                child: Text('Whatsapps',style: GoogleFonts.abhayaLibre(
                  fontSize:20,
                  fontStyle:FontStyle.italic,
                  fontWeight:FontWeight.w100
                ),),
              ),
              Tab( child: Text('Chat'),),
              Tab(child: Text('status'),),
              Tab(child: Text('Contact'),),

            ],
          ),
        ),
      ),
    );
  }

}