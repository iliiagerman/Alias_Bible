import 'package:flutter/material.dart';
import 'package:my_blanks/screen/game/content/game_screen_content.dart';
import 'package:my_blanks/screen/game/game_screen_controller.dart';
import 'package:provider/provider.dart';

import 'game_screen_state.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late GameScreenController _controller;

  @override
  void initState() {
    _controller = GameScreenController(
        openGameFinishScreen: () =>
            Navigator.pushNamed(context, '/result_game_screen'));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async=> true,
      child: MultiProvider(
          providers: [
            /// раздает эти две штуки - контролер и стейт всем виджетам в child
            Provider.value(value: _controller),
            ChangeNotifierProvider.value(value: _controller.state),
          ],
          child: const GameScreenContent(),

      ),
    );
  }
}
