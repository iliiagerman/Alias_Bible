import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoAboutTeams extends StatelessWidget {
  const InfoAboutTeams({Key? key, required this.nameTeams, required this.counterPoints}) : super(key: key);

  final String nameTeams;
  final String counterPoints;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(left: 12, top: 3, right: 12, bottom: 3),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.deepOrange, borderRadius: BorderRadius.circular(22)),
        child: Row(
          children: [
            Text(nameTeams, style: TextStyle(
            color: Colors.white,fontSize: 25, fontWeight: FontWeight.w600)),
            Spacer(),
            Text(counterPoints, style: TextStyle(
              color: Colors.white,fontSize: 25, fontWeight: FontWeight.w600
            ),)

          ],
        )
    );
  }
}
