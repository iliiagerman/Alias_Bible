import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerForGame extends StatefulWidget {
  const TimerForGame({Key? key}) : super(key: key);

  @override
  State<TimerForGame> createState() => _TimerState();
}

class _TimerState extends State<TimerForGame> {
  static const maxSeconds = 60;
  int seconds = maxSeconds;
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
    setState(()  => seconds--);
    });
  }

  @override
  Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.black,
  //     body: Container(
  //       child: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             buildTime(),
  //
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget buildTime() {
    return Text(
      '$seconds',
      style: TextStyle(
          color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
    );
  }
}
