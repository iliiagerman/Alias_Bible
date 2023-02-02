
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_blanks/screen/game/content/game_cards_stack.dart';
import 'package:my_blanks/screen/game/game_screen_controller.dart';
import 'package:my_blanks/screen/game/game_screen_state.dart';
import 'package:my_blanks/widgets/button/button_like_and_share.dart';
import 'package:my_blanks/widgets/button/buttons_for_game.dart';
import 'package:my_blanks/widgets/button/home_screen_button.dart';
import 'package:my_blanks/widgets/game/game_timer.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GameScreenContent extends StatelessWidget {
  const GameScreenContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GameScreenState>(builder: (_, state, __) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  _showCupertinoDialog(context);
                },
                icon: const Icon(Icons.arrow_back_ios)),
            centerTitle: false,
            title: Row(
              children: [
                const Spacer(),
                Visibility(
                  visible: state.currentStep == GameStep.startingGame,
                  child: ButtonLikeAndShare(
                    name: 'таблица баллов ',
                    size: 15,
                    color: Colors.white,
                    onButtonClick: () {
                      Navigator.pushNamed(
                          context, '/info_about_teams_screen.dart');
                    },
                  ),
                ),
              ],
            )),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Visibility(
                  visible: state.currentStep == GameStep.startingGame,
                  child: const SizedBox(
                    height: 50,
                  )),
              GameTimer(
                  maxSeconds: GameScreenState.maxSeconds,
                  seconds: state.seconds),
              const Spacer(),
              Visibility(
                  visible: state.currentStep == GameStep.playingGame ||
                      state.currentStep == GameStep.finishedTime,
                  child: const GameCardsStack()),
              const Spacer(),
              Visibility(
                visible: state.currentStep == GameStep.playingGame ||
                    state.currentStep == GameStep.finishedTime,
                child: ButtonsForGame(
                  onButtonClickCorrectly: () {
                    if (state.currentStep == GameStep.finishedTime) {
                      Navigator.pushNamed(context, '/result_game_screen');
                    }
                    state.matchEngine.currentItem?.nope();
                  },
                  onButtonClickFalse: () {
                    if (state.currentStep == GameStep.finishedTime) {
                      Navigator.pushNamed(context, '/result_game_screen');
                    }
                    state.matchEngine.currentItem?.like();
                  },
                ),
              ),
              const Spacer(),
              Visibility(
                visible: state.currentStep == GameStep.startingGame,
                child: Column(
                  children: [
                    HomeScreenButton(
                      nameButton: 'начать игру',
                      onButtonClick: () {
                        context.read<GameScreenController>().startTimer();
                        // startTimer();
                      },
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
  void _showCupertinoDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Хотите выйти?'),
            content: const Text('игра начнется заново!'),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('отмена')),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text('выйти'),
              )
            ],
          );
        });
  }
}
