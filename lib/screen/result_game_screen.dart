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
    ResultModel('red', false),
    ResultModel('white',false),
    ResultModel('black',false),
    ResultModel('green',false),
    ResultModel('Давид',false),
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
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: resultModel.length,
              itemBuilder: (BuildContext context, int index) {
                return ContactItem(resultModel[index].name, resultModel[index].isSelected);
              }),
        ));
  }

  Widget ContactItem(String name, bool isSelected) {

   isSelected = true;
    return ListTile(
      title: Row(
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
      trailing: CupertinoSwitch(
        activeColor: Colors.white54,
        value: isSelected,
        onChanged: (bool value) {
          setState(() {
            resultModel[index].isSelected = !resultModel[index].isSelected;
          });
        },
      ),
    );
  }
}
