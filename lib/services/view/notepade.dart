import 'package:flutter/material.dart';

class NoteP extends StatefulWidget {
  const NoteP({super.key});

  @override
  State<NoteP> createState() => _NotePState();
}

class _NotePState extends State<NoteP> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Note',
              style: TextStyle(color: Colors.black),
            ),
            leading: Icon(
              Icons.settings,
              color: Colors.yellow,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              PopupMenuButton(
                  icon: Icon(Icons.share),
                  itemBuilder: (context) {
                    return [PopupMenuItem(child: Text('share as image'))];
                  })
            ],
          ),
          body: Column(
            children: [
              Text(
                'March 5,5,2002 12:00 PM',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              )
            ],
          ),
        ));
  }
}
