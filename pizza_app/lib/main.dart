import 'package:flutter/material.dart';
import 'package:pizza_app/pages/own_pizza.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Signika',
      ),
      themeMode: ThemeMode.system,
      home: own_pizaa(),

    );
  }
}
