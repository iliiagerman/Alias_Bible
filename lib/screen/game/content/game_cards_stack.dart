import 'package:flutter/material.dart';
import 'package:my_blanks/screen/game/game_screen_state.dart';
import 'package:provider/provider.dart';
import 'package:swipe_cards/swipe_cards.dart';

class GameCardsStack extends StatelessWidget {
  const GameCardsStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GameScreenState>(builder: (_, state, __) {
      return SizedBox(
        height: 350,
        width: 280,
        child: Center(
            child: SwipeCards(
          matchEngine: state.matchEngine,
          onStackFinished:
              () {
            // todo
          },
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              elevation: 15,
              shadowColor: Colors.deepOrange,
              color: Colors.deepOrange,
              child: Center(
                  child: Text(
                state.cards[index].title,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 30),
              )),
            );
          },
        )),
      );
    });
  }
}

