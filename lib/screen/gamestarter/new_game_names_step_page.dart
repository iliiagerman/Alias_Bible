import 'package:flutter/material.dart';

import '../../widgets/button/home_screen_button.dart';
import '../../widgets/new_play_form.dart';

class NewGameNamesStepPage extends StatefulWidget {
  const NewGameNamesStepPage({Key? key}) : super(key: key);

  @override
  State<NewGameNamesStepPage> createState() => _NewGameNamesStepPageState();
}

class _NewGameNamesStepPageState extends State<NewGameNamesStepPage> {
  final List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();
    _controllers.add(TextEditingController(text: 'Филипийцы'));
    _controllers.add(TextEditingController(text: 'Самсоны'));
  }

  @override
  void dispose() {
    super.dispose();
    for (var value in _controllers) {
      value.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Команды',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 12),
          //
          // NewPlayForm(nameForController: ),цццц
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: _controllers
                  .map((e) => NewPlayForm(nameForController: e))
                  .toList(),
            ),
          )),
          Spacer(),
          HomeScreenButton(
            nameButton: 'Продолжить',
            onButtonClick: () {
              _onClick(context);
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  void _onClick(BuildContext context) {
    // for (int i=0; i < _controllers.length;i++ ) {
    //   if (_controllers[i].text.isEmpty) {
    //     Text('o');
    //   }
    //  if(_controllers[i].text.isNotEmpty) {
    //    Navigator.pushNamed(context, '/change_level_screen.dart');
    //  }
    // }
    // if(_controllers.last.text.isNotEmpty) {
    //   Navigator.pushNamed(context, '/change_level_screen.dart');
    // }

    ///todo
    ///получить строку название первой команды и второй если они совпадают то не переходить дальше

    _controllers.first.text.isEmpty
        ? 'дайте название командам'
        : Navigator.pushNamed(context, '/change_level_screen.dart');
  }
}



//рубрика - проблемы:
//1. не получается сделать валидацию чтоб пройти по двоим именам команв для проверки на заполняемость
