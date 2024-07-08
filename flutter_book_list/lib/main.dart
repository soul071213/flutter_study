import 'package:flutter/material.dart';
import 'package:flutter_book_list/screens/list_screen.dart';


void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book List APP',
      home: ListScreen(),
    );
  }
}
