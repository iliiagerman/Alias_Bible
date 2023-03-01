import 'package:flutter/material.dart';

import '../widgets/button/home_screen_button.dart';
import '../widgets/home_emblem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/images/home_screen_one.jpg"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 50),
              const HomeEmblem(),
              const Spacer(),
              HomeScreenButton(
                nameButton: 'Новая игра',
                onButtonClick: () {
                  Navigator.pushNamed(context, '/new_play_screen.dart');
                },
              ),
              const SizedBox(height: 10),
              HomeScreenButton(
                nameButton: 'Правила',
                onButtonClick: () {
                  Navigator.pushNamed(context, '/rule_screen.dart');
                },
              ),
              const SizedBox(height: 10),
              HomeScreenButton(
                nameButton: 'Настройки',
                onButtonClick: () {
                  Navigator.pushNamed(context, '/settings_screen.dart');
                },
              ),
              const SizedBox(height: 0),
            ],
          ),
        ),
      ),
    );
  }
}
