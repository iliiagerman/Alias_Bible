import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultGameScreen extends StatefulWidget {
  const ResultGameScreen({Key? key}) : super(key: key);

  @override
  State<ResultGameScreen> createState() => _ResultGameScreenState();
}

class _ResultGameScreenState extends State<ResultGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Результат',
              style: TextStyle(
            fontSize: 25
        ),
        ),
      ),
    );
  }
}