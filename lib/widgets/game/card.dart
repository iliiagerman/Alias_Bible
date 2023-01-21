import 'package:flutter/material.dart';

class CardForGame extends StatelessWidget {
  const CardForGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Card(
            elevation: 10,
            color: Colors.deepOrange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            child: Container(
              width: 300,
              height: 400,
            ),
          ),
        ],
      ),
    );
  }
}
