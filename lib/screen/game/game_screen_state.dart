import 'package:flutter/widgets.dart';
import 'package:my_blanks/data/list_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

class GameScreenState extends ChangeNotifier {
  static const maxSeconds = 5;

  GameStep _currentStep = GameStep.startingGame;
  int _seconds = maxSeconds;
  final List<ListCard> _cards = [];

  GameStep get currentStep => _currentStep;

  late MatchEngine _matchEngine;
  final List<SwipeItem> _swipeItems = [];

  GameScreenState() {
    for (var content in listCard) {
      var swipeItem = SwipeItem(content: content);
      _swipeItems.add(swipeItem);
    }

    _cards.addAll(listCard);
    _matchEngine = MatchEngine(swipeItems: _swipeItems);
  }



  set currentStep(GameStep value) {
    _currentStep = value;
    notifyListeners();
  }

  int get seconds => _seconds;

  set seconds(int value) {
    _seconds = value;
    notifyListeners();
  }

  List<ListCard> get cards => [..._cards];

  set cards(List<ListCard> value) {
    _cards.clear();
    _cards.addAll(value);
    notifyListeners();
  }

  MatchEngine get matchEngine => _matchEngine;
}

enum GameStep {
  startingGame,
  playingGame,
  finishedGame,
}
