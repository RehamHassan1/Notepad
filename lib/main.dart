import 'package:flutter/material.dart';
import 'package:flutter_task/services/view/notepade.dart';

import 'services/view/one.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NoteP());
  }
}