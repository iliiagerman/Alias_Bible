import 'package:flutter/material.dart';

class ButtonLikeAndShare extends StatelessWidget {
  const ButtonLikeAndShare(
      {Key? key,
      required this.name,
      required this.size,
      required this.onButtonClick,
      this.color})
      : super(key: key);

  final String name;
  final double size;
  final Color? color;
  final VoidCallback onButtonClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onButtonClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      child: Text(
        name,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontFamily: 'Neucha',
        ),
      ),
    );
  }
}
// Colors.deepOrange
