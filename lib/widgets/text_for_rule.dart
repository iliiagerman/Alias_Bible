import 'package:flutter/material.dart';

class TextForRule extends StatelessWidget {
  final String description;
  final Icon iconForDescription;

  const TextForRule({
    super.key,
    required this.description,
    required this.iconForDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
      child: Row(
        children: [
          iconForDescription,
          const SizedBox(width: 15),
          Text(
            description,
            style: const TextStyle(fontSize: 15, color: Colors.white),
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
