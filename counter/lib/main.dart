import 'package:flutter/material.dart';
import 'package:counter/first_screen.dart';


void main() {
  runApp(homePage());
}

class homePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home:FirstScreen(),
    );
  }
}