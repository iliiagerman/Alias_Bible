import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameTimer extends StatelessWidget {
  const GameTimer({
    Key? key,
    required this.maxSeconds,
    required this.seconds,
  }) : super(key: key);

  final int maxSeconds;
  final int seconds;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTimer(),
        SizedBox(height: 30),
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
