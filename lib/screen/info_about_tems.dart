import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/button/home_screen_button.dart';
import '../widgets/info_about_teams.dart';


class InfoAboutTems extends StatefulWidget {
  const InfoAboutTems({Key? key}) : super(key: key);

  @override
  State<InfoAboutTems> createState() => _InfoAboutTemsState();
}

class _InfoAboutTemsState extends State<InfoAboutTems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Инфо команд',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 15),
            InfoAboutTeams(nameTeams: 'UU', counterPoints: '20'),
            InfoAboutTeams(nameTeams: 'U2', counterPoints: '25'),
            Spacer(),
            HomeScreenButton(
              nameButton: 'Продолжить',
              onButtonClick: () {
                Navigator.pushNamed(context, '/game_screen.dart');
                // TimerForGame.startTimer();
              },
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );;
  }
}
