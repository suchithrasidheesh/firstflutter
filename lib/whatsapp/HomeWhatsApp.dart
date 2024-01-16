import 'updateWhatsApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'callWhatsApp.dart';
import 'chatWhatsApp.dart';
import 'groupWhatsApp.dart';

class HomeWhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          backgroundColor: Colors.green,
          title: Text(
            'WhatsApp', style: TextStyle(color: Colors.white, fontSize: 20),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Icon(Icons.camera_alt),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('New group'),),
                  PopupMenuItem(child: Text('New broadcast')),
                  PopupMenuItem(child: Text('Linked devices')),
                  PopupMenuItem(child: Text('Starred messages')),
                  PopupMenuItem(child: Text('Payments')),
                  PopupMenuItem(child: Text('Settings'))
                ];
              }),
            ),
          ],
          bottom: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.group,)),
                Tab(text: 'Chats',),
                Tab(text: 'Updates',),
                Tab(text: 'Calls',)
              ]
          ),),
        body: TabBarView(
          children: [
            groupWhatsApp(),
            chatWhatsApp(),
            updateWhatsApp(),
            callsWhatsApp(),
          ],
        ),
      ),
    );
  }
}