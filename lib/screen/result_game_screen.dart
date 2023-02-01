import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/result_model.dart';
import '../widgets/button/home_screen_button.dart';

class ResultGameScreen extends StatefulWidget {
  const ResultGameScreen({Key? key}) : super(key: key);

  @override
  State<ResultGameScreen> createState() => _ResultGameScreenState();
}

class _ResultGameScreenState extends State<ResultGameScreen> {
  List<ResultModel> resultModel = [
    ResultModel('red', false),
    ResultModel('white', false),
    ResultModel('black', false),
    ResultModel('green', false),
    ResultModel('Давид', false),
  ];

  List<ResultModel> selectedResultModel = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: const Text(' '),
          backgroundColor: Colors.deepOrange,
          title: const Text(
            'Результат',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 100,
                child: ListView.builder(
                    itemCount: resultModel.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ContactItem(
                        resultModel[index].name,
                        resultModel[index].isSelected,
                        index,
                      );
                    })),
            Spacer(),
            HomeScreenButton(
              nameButton: 'Продолжить',
              onButtonClick: () {
                Navigator.pushNamed(context, '/info_about_teams_screen.dart');
                // TimerForGame.startTimer();
              },
            ),
            SizedBox(height: 30),
          ],
        ));
  }

  Widget ContactItem(String name, bool isSelected, int index) {
    // isSelected = true;
    return ListTile(
      title: Row(
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ],
      ),
      trailing: CupertinoSwitch(
        activeColor: Colors.deepOrange,
        value: isSelected,
        onChanged: (bool value) {
          setState(() {
            resultModel[index].isSelected = !resultModel[index].isSelected;
            if (resultModel[index].isSelected == true) {
              selectedResultModel.add(ResultModel(name, true));
            } else if (resultModel[index].isSelected == false) {
              selectedResultModel.removeWhere(
                  (element) => element.name == resultModel[index].name);
            }
          });
        },
      ),
    );
  }
}
