import 'package:flutter/material.dart';

class SettingsForm extends StatelessWidget {
  final String name;
  final double counterMax;
  final double counterMin;
  final double sliderValue;
  final int counterDivisions;
  final ValueChanged valueChanged;

  const SettingsForm({
    super.key,
    required this.name,
    required this.counterMax,
    required this.counterMin,
    required this.counterDivisions,
    required this.sliderValue,
    required this.valueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(10),
            margin:
                const EdgeInsets.only(left: 12, top: 3, right: 12, bottom: 3),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(22)),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      maxLines: 2,
                    ),
                    const Spacer(),
                    Text(
                      sliderValue.round().toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ],
                ),
                Slider(
                  value: sliderValue,
                  min: counterMin,
                  max: counterMax,
                  divisions: counterDivisions,
                  // label: _sliderValue.round().toString(),
                  activeColor: Colors.white,
                  thumbColor: Colors.white,
                  onChanged: valueChanged,
                ),
              ],
            )),
      ],
    );
  }
}
