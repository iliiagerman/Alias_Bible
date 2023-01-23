import 'package:flutter/material.dart';
import 'package:my_blanks/screen/game/content/game_cards_stack.dart';
import 'package:my_blanks/screen/game/game_screen_controller.dart';
import 'package:my_blanks/screen/game/game_screen_state.dart';
import 'package:my_blanks/widgets/button/button_like_and_share.dart';
import 'package:my_blanks/widgets/button/buttons_for_game.dart';
import 'package:my_blanks/widgets/button/home_screen_button.dart';
import 'package:my_blanks/widgets/game/game_timer.dart';
import 'package:provider/provider.dart';

import '../../../widgets/game/card.dart';

class GameScreenContent extends StatelessWidget {
  const GameScreenContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GameScreenState>(builder: (_, state, __) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
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
              GameTimer(
                  maxSeconds: GameScreenState.maxSeconds,
                  seconds: state.seconds),
              const Spacer(),
              Visibility(
                  visible: state.currentStep == GameStep.playingGame,
                  child: const GameCardsStack()),
              const Spacer(),
              Visibility(
                visible: state.currentStep == GameStep.playingGame,
                child: ButtonsForGame(
                  onButtonClickCorrectly: () {
                    state.matchEngine.currentItem?.nope();
                  },
                  onButtonClickFalse: () {
                    state.matchEngine.currentItem?.like();
                  },
                ),
              ),
              Visibility(
                visible: state.currentStep == GameStep.startingGame,
                child: CardForGame(name: 'начать игру'),
              ),
              Spacer(),
              Visibility(
                visible: state.currentStep == GameStep.startingGame,
                child: HomeScreenButton(
                  nameButton: 'начать игру',
                  onButtonClick: () {
                    context.read<GameScreenController>().startTimer();
                    // startTimer();
                  },
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      );
    });
  }
}
