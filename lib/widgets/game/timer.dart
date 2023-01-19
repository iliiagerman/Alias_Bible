import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../button/home_screen_button.dart';

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
      if (seconds > 0) {
        setState(() => seconds--);
      } else {
        timer?.cancel();
      }
    });
  }

  Widget buildButtons() {
    return HomeScreenButton(
      nameButton: 'начать игру',
      onButtonClick: () {
        startTimer();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTimer(),
        SizedBox(height: 30),
        buildButtons(),
      ],
    );
  }

  Widget buildTimer() => SizedBox(
        width: 120,
        height: 120,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: seconds / maxSeconds,
              valueColor: AlwaysStoppedAnimation(Colors.white),
              strokeWidth: 12,
              backgroundColor: Colors.deepOrange,
            ),
            Center(child: buildTime()),
          ],
        ),
      );

  Widget buildTime() {
    return Text(
      '$seconds',
      style: const TextStyle(
          color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
    );
  }
}
