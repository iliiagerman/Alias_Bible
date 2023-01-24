import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/result_model.dart';

class ResultGameScreen extends StatefulWidget {
  const ResultGameScreen({Key? key}) : super(key: key);

  @override
  State<ResultGameScreen> createState() => _ResultGameScreenState();
}


class _ResultGameScreenState extends State<ResultGameScreen> {

  List<ResultModel> resultModel = [
    ResultModel('red'),
    ResultModel('white'),
    ResultModel('black'),
    ResultModel('green'),
    ResultModel('Давид'),
  ];

  List<ResultModel> selectedResultModel = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Результат',
          style: TextStyle(
              fontSize: 25
          ),
        ),
      ),
      // body: ,
    );
  }
}