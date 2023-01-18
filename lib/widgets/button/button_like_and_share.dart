import 'package:flutter/material.dart';

class ButtonLikeAndShare extends StatelessWidget {
  const ButtonLikeAndShare({Key? key, required this.name, required this.size }) : super(key: key);

  final String name;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,

    ),
      child: Text(
        name,
        style: TextStyle(color: Colors.deepOrange, fontSize: size),
      ),);
  }
}
