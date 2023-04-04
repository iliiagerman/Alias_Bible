import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/button/home_screen_button.dart';
import '../../widgets/choice_level_form.dart';

class NewGameCategoryStepPage extends StatefulWidget {
  const NewGameCategoryStepPage({Key? key}) : super(key: key);

  @override
  State<NewGameCategoryStepPage> createState() => _NewGameCategoryStepPageState();
}

class _NewGameCategoryStepPageState extends State<NewGameCategoryStepPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Категории',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 100,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChoiceLevelForm(
                          level: 'один раз прочитал Библию',
                          onButtonClick: () {},
                        ),
                        ChoiceLevelForm(
                          level: 'Пастор',
                          onButtonClick: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChoiceLevelForm(
                          level: 'один раз прочитал Библию',
                        ),
                        ChoiceLevelForm(
                          level: 'Пастор',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChoiceLevelForm(
                          level: 'один раз прочитал Библию',
                        ),
                        ChoiceLevelForm(
                          level: 'Пастор',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChoiceLevelForm(
                          level: 'один раз прочитал Библию',
                        ),
                        ChoiceLevelForm(
                          level: 'Пастор',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            HomeScreenButton(
              nameButton: 'Продолжить',
              onButtonClick: () {
                Navigator.pushNamed(context, '/settings_screen_one.dart');
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
