import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/button/button_like_and_share.dart';
import '../widgets/button/home_screen_button.dart';
import '../widgets/game/card.dart';
import '../widgets/game/game_timer.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  static const maxSeconds = 60;
  int seconds = maxSeconds;
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: false,
          title: Row(
            children: [
              Spacer(),
              ButtonLikeAndShare(
                name: 'таблица баллов ',
                size: 15,
                color: Colors.white,
                onButtonClick: () {
                  Navigator.pushNamed(context, '/info_about_teams_screen.dart');
                },
              ),
            ],
          )),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            GameTimer(maxSeconds: maxSeconds, seconds: seconds),
            Spacer(),
            // CardForGame(),
            ListCard(),
            Spacer(),
            buildButtons(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget buildButtons() {
    return HomeScreenButton(
      nameButton: 'начать игру',
      onButtonClick: () {
        startTimer();
      },
    );
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() => seconds--);
      } else {
        timer?.cancel();
      }
    });
  }

  Widget ListCard() {
    return Center(
      S
    );
  }
}
