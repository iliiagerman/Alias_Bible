import 'package:flutter/material.dart';

class HomeScreenButton extends StatelessWidget {
  final String nameButton;
  final VoidCallback? onButtonClick;

  const HomeScreenButton({
    super.key,
    required this.nameButton,
     this.onButtonClick,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onButtonClick ,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        fixedSize: const Size(300, 60),
      ),
      child: Text(
        nameButton,
        style: const TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
