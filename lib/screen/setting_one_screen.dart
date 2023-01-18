import 'dart:core';

import 'package:flutter/material.dart';

import '../widgets/button/home_screen_button.dart';
import '../widgets/settings/setting_form_Tree.dart';
import '../widgets/settings/settings_form.dart';

class SettingsScreenOne extends StatefulWidget {
  const SettingsScreenOne({Key? key}) : super(key: key);

  @override
  State<SettingsScreenOne> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreenOne> {
  double sliderValue = 50;
  double sliderValueTwo = 60;
  bool lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Настройки',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 9),
          SettingsForm(
            name: 'Количество правильных \nслов до победы: ',
            counterMax: 100,
            counterMin: 20,
            counterDivisions: 80,
            sliderValue: sliderValue,
            valueChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
          SettingsForm(
            name: 'Секунд в раунде: ',
            counterMax: 90,
            counterMin: 30,
            counterDivisions: 60,
            sliderValue: sliderValueTwo,
            valueChanged: (value) {
              setState(() {
                sliderValueTwo = value;
              });
            },
          ),
          const SettingsFormTree(),
          const Spacer(),
          HomeScreenButton(
            nameButton: 'Продолжить',
            onButtonClick: () {
              Navigator.pushNamed(context, '/info_about_teams_screen.dart');
              // TimerForGame.startTimer();
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
