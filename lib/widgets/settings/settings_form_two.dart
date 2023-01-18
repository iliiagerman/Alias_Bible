import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsFormTwo extends StatelessWidget {

  const SettingsFormTwo({super.key,
    required this.name,
    required this.nameDop,
    required this.lights,
    required this.valueChanged,
  });



final String name;
  final String nameDop;
  final bool lights;
  final ValueChanged valueChanged;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 12, top: 3, right: 12, bottom: 3),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.deepOrange, borderRadius: BorderRadius.circular(22)),
      child: Row(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              maxLines: 2,
            ),
            Text(
              nameDop,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w500),
              maxLines: 2,
            ),
            // MergeSemantics(
            //   child: ListTile(
            //     title: const Text('Lights'),
            //     trailing: CupertinoSwitch(
            //       value: lights,
            //       onChanged: valueChanged,
            //     ),
            //   ),
            // ),
          ],
        )
      ]),
    );
  }
}
