import 'package:flutter/material.dart';
import 'package:flutter_task/model/note.dart';
import 'notepade.dart';

class NotePad extends StatelessWidget {
  const NotePad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 50,
          ),
          Row(
            children: [
              SizedBox(
                height: 10,
                width: 30,
              ),
              Text(
                'Notepad',
                style: TextStyle(fontSize: 50, color: Colors.black),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                prefixIcon: Icon(Icons.search_outlined),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                hintStyle: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 90, 90, 90)),
                hintText: "search notes",
              ),
            ),
          ),
          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
                color: Color(0xfffa5fec6),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Today grocery list',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Jun 26,2022 08:05 PM',
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 29, 29, 29)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
            width: 20,
          ),
          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
                color: Color(0xffffffca3),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Rich dad poor dad quotes',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Jun 26,2022 05:45 PM',
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 29, 29, 29)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 130,
            width: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return NoteP();
                  }));
                },
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                backgroundColor: Colors.yellow,
              ),
              SizedBox(
                width: 40,
              )
            ],
          )
        ],
      ),
    );
  }
}
