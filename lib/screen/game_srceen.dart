import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';

import '../data/list_card.dart';
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

  late MatchEngine _matchEngine;
  late List<SwipeItem> _SwipeItems = [];

  @override
  void initState() {
    listCard.forEach((content) {
      var swipeItem = SwipeItem(content: content);
      _SwipeItems.add(swipeItem);
    });

    _matchEngine = MatchEngine(swipeItems: _SwipeItems);
    super.initState();
  }

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
    return Container(
      height: 350,
      width: 280,
      child: Center(
          child: SwipeCards(
        matchEngine: _matchEngine,
        onStackFinished: () {},
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
            ),
            elevation: 15,
            shadowColor: Colors.deepOrange,
            child: Center(
                child: Text(
              listCard[index].title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            )),
            color: Colors.deepOrange,
          );
        },
      )),
    );
  }
}
