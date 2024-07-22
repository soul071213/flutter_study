
import 'package:flutter/material.dart';


import 'dart:async';

enum TimerStatus {running,paused,stopped,resting}

class Timer_screen extends StatefulWidget {
  const Timer_screen({super.key});

  @override
  State<Timer_screen> createState() => _Timer_screenState();
}

class _Timer_screenState extends State<Timer_screen> {
  static const work_seconds = 25;
  static const rest_seconds = 5;

  late TimerStatus _timerstatus;
  late int _timer;
  late int _pomodoroCount;

  

  void initState(){
    super.initState();
    _timerstatus = TimerStatus.stopped;
    print(_timerstatus.toString());
    _timer = work_seconds;
    _pomodoroCount =0;
  }

  

  void run(){
    setState(() {
      _timerstatus = TimerStatus.running;
      print("[=>]"+_timerstatus.toString());
      runTimer();
    });
  }

  void runTimer() async{
    Timer.periodic(Duration(seconds: 1),(Timer t){
      switch(_timerstatus){
        case TimerStatus.paused:
          t.cancel();
          break;
        case TimerStatus.stopped:
          t.cancel();
          break;
        case TimerStatus.running:
        if(_timer <= 0){
          print("작업완료");
          rest();
        }
        else{
          setState(() {
            _timer -=1;
          });
        }
        break;
        case TimerStatus.resting:
        if(_timer<=0){
          setState(() {
            _pomodoroCount +=1;
          });
          print("오늘 $_pomodoroCount개의 뽀모도로를 달성했습니다.");
          t.cancel();
        }
        else{
          setState(() {
            _timer -=1;
          });
        }
        break;
        default:
        break;
      }
      
    });
  }

  void rest(){
    setState(() {
      _timer =rest_seconds;
      _timerstatus = TimerStatus.resting;
      print("[=>]"+_timerstatus.toString());
    
    });
  }
  void pause(){
    setState(() {
      _timerstatus = TimerStatus.paused;
      print("[=>]"+_timerstatus.toString());
    
    });
  }
  void resume(){
    run();
  }

  void stop(){
    setState(() {
      _timer = work_seconds;
      _timerstatus = TimerStatus.stopped;
      print("[=>]"+_timerstatus.toString());
    
    });
  }
  @override
  Widget build(BuildContext context) {
    final List<Widget> _runningButtons=[
      ElevatedButton(
        onPressed: (){},
        child: Text(
          1 == 2 ? '계속하기' : '일시정지',
          style: TextStyle(color: Colors.white,fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(
          primary:Colors.blue
        ),
      ),
      Padding(padding: EdgeInsets.all(20)),
      ElevatedButton(
        onPressed: (){},
        child: Text(
          '포기하기',
          style: TextStyle(fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(primary : Colors.grey),
      )
    ];

    final List<Widget> _stoppedButtons = [
      ElevatedButton(
        onPressed:(){}, 
        child: Text(
          '시작하기',
          style: TextStyle(color: Colors.white,fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(
          primary: 1==2 ? Colors.green : Colors.blue,
        ),
        
      )
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text("보모도로 타이머"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height : MediaQuery.of(context).size.height * 0.5,
            width:  MediaQuery.of(context).size.width * 0.5,
            child: Center(
              child: Text(
                '00:00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: 1 == 2 ? Colors.green : Colors.blue,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: 1 == 2 ? const [] : 1==2 ? _stoppedButtons : _runningButtons,
          )
        ],
      ),
    ); 
  }
}