import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsFormTree extends StatefulWidget {
  const SettingsFormTree({Key? key}) : super(key: key);

  @override
  State<SettingsFormTree> createState() => _SettingsFormTreeState();
}

class _SettingsFormTreeState extends State<SettingsFormTree> {
  bool lights = true;

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
            children: const [
              Text(
                'Штраф за пропуск',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                maxLines: 2,
              ),
              Text(
                'каждое пропущенное слово отнимает одно очко ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
                maxLines: 2,
              ),
            ]),
        const Spacer(),
        CupertinoSwitch(
          activeColor: Colors.white54,
          value: lights,
          onChanged: (bool value) {
            setState(() {
              lights = value;
            });
          },
        ),
      ]),
    );
  }
}
