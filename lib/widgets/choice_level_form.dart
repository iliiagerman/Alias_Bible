import 'package:flutter/material.dart';

class ChoiceLevelForm extends StatelessWidget {
  const ChoiceLevelForm({Key? key, required this.level, this.onButtonClick}) : super(key: key);

  final String level;
  final VoidCallback? onButtonClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: onButtonClick,
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.all(5),
        width: 185,
        height: 185,
        decoration: BoxDecoration(
            color: Colors.deepOrange, borderRadius: BorderRadius.circular(22)),
        child: Center(
          child: Text(
            maxLines: 5,
            level,style: const TextStyle(
            color: Colors.white, fontSize: 20,
          ),

          ),
        ),
      ),
    );
  }
}
