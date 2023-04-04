import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_blanks/screen/gamestarter/new_%20game_settings_step_page.dart';
import 'package:my_blanks/screen/gamestarter/new_game_category_step_page.dart';
import 'package:my_blanks/screen/game/game_srceen.dart';
import 'package:my_blanks/screen/gamestarter/new_game_names_step_page.dart';
import 'package:my_blanks/screen/home_screen.dart';
import 'package:my_blanks/screen/info_about_tems.dart';
import 'package:my_blanks/screen/result_game_screen.dart';
import 'package:my_blanks/screen/rule_screen.dart';
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
      '/settings_screen_one.dart': (context) => const NewGameSettingsStepPage(),
      '/rule_screen.dart': (context) => const RuleScreen(),
      '/new_play_screen.dart': (context) => const NewGameNamesStepPage(),
      '/change_level_screen.dart': (context) => const NewGameCategoryStepPage(),
      '/info_about_teams_screen.dart': (context) => const InfoAboutTems(),
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
