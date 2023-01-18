import 'dart:core';

import 'package:flutter/material.dart';

import '../widgets/button/button_like_and_share.dart';
import '../widgets/settings/setting_form_Tree.dart';
import '../widgets/settings/settings_form.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double sliderValue = 50;
  double sliderValueTwo = 60;
  bool lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(1, 0, 53, 1),
      backgroundColor: Colors.black,
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
            name: 'Секунд в раунде:  ',
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
          const ButtonLikeAndShare(name: 'Рассказать друзьям', size: 35),
          const ButtonLikeAndShare(name: 'Cообщить о проблеме', size: 25),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
