import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_blanks/screen/choice_level_screen.dart';
import 'package:my_blanks/screen/game/game_srceen.dart';
import 'package:my_blanks/screen/home_screen.dart';
import 'package:my_blanks/screen/info_about_teams_screen.dart';
import 'package:my_blanks/screen/new_play_screen.dart';
import 'package:my_blanks/screen/result_game_screen.dart';
import 'package:my_blanks/screen/rule_screen.dart';
import 'package:my_blanks/screen/setting_one_screen.dart';
import 'package:my_blanks/screen/settings_screen.dart';
import 'package:my_blanks/widgets/button/alert.dart';


void main() {
  runApp(
      MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const MyApp(),
      '/settings_screen.dart': (context) => const SettingsScreen(),
      '/settings_screen_one.dart': (context) => const SettingsScreenOne(),
      '/rule_screen.dart': (context) => const RuleScreen(),
      '/new_play_screen.dart': (context) => const NewPlayScreen(),
      '/change_level_screen.dart': (context) => const ChangeLevelScreen(),
      '/info_about_teams_screen.dart': (context) => const InfoAboutTeamsScreen(),
      '/game_screen.dart': (context) => const GameScreen(),
      '/result_game_screen': (context) => const ResultGameScreen(),

    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();

  }
}
