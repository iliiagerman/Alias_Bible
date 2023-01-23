import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsForGame extends StatelessWidget {
  const ButtonsForGame(
      {Key? key,
      required this.onButtonClickCorrectly,
      required this.onButtonClickFalse})
      : super(key: key);

  final VoidCallback onButtonClickCorrectly;
  final VoidCallback onButtonClickFalse;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 50),
        FloatingActionButton.large(
          elevation: 300,
          onPressed: onButtonClickCorrectly,
          child: Icon(
            Icons.close,
            size: 60,
          ),
          backgroundColor: Colors.deepOrange,
        ),
        Spacer(),
        FloatingActionButton.large(
          onPressed: onButtonClickFalse,
          child: Icon(
            Icons.check,
            size: 60,
          ),
          backgroundColor: Colors.deepOrange,
        ),
        SizedBox(width: 50),
      ],
    );
  }
}
