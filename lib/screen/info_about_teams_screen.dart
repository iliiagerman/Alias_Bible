import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/button/home_screen_button.dart';
import '../widgets/game/timer.dart';
import '../widgets/info_about_teams.dart';


class InfoAboutTeamsScreen extends StatefulWidget {
  const InfoAboutTeamsScreen({Key? key}) : super(key: key);

  @override
  State<InfoAboutTeamsScreen> createState() => _InfoAboutTeamsScreenState();
}

class _InfoAboutTeamsScreenState extends State<InfoAboutTeamsScreen> {
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
