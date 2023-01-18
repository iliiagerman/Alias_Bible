import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/button/button_like_and_share.dart';
import '../widgets/game/timer.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
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
            SizedBox(height: 100),
            TimerForGame(),
          ],
        ),
      ),
    );
  }
}
// TimerForGame.startTimer();},
