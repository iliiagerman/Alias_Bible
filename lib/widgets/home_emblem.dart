import 'package:flutter/material.dart';

class HomeEmblem extends StatelessWidget {
  const HomeEmblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: Colors.deepOrange,
          ),
        ),
        Column(
          children: const [
            Text(
              'ALIAS',
              style: TextStyle(
                  fontSize: 70,
                  color: Colors.white,
                  fontFamily: 'LuckiestGuy',
                  fontWeight: FontWeight.w400),
            ),
            Text(
              'bible',
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'RubikDistressed',
              ),
            ),
          ],
        )
      ],
    );
  }
}
