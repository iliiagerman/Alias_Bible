import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_blanks/screen/game/game_screen_state.dart';

class GameScreenController {
  final GameScreenState _state = GameScreenState();


  Timer? _timer;

  late Function openGameFinishScreen;

  GameScreenState get state => _state;

  GameScreenController({
    required this.openGameFinishScreen,
  });

  dispose() {
    _timer?.cancel();
  }


  startTimer() {
    if (state.currentStep != GameStep.startingGame) {
      return;
    }
    state.currentStep = GameStep.playingGame;

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (state.seconds > 0) {
        state.seconds = state.seconds - 1;
      } else {
        _timer?.cancel();

        state.currentStep = GameStep.finishedTime;
        // openGameFinishScreen();
      }
    });
  }



}
