import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget{
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>{
  int count=0;

  void increase(){
    setState(() {
      count++;
    });
  }

  void decrease(){
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('카운터 앱'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('카운터: $count',style: TextStyle(fontSize: 25),),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: increase, child: Text('+감소')),
                ElevatedButton(onPressed: decrease, child: Text('-감소')),
              ],
            )
          ],
        ),
      ),
    );
  }
}