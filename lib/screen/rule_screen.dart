import 'package:flutter/material.dart';

import '../widgets/button/button_like_and_share.dart';
import '../widgets/text_for_rule.dart';

class RuleScreen extends StatefulWidget {
  const RuleScreen({Key? key}) : super(key: key);

  @override
  State<RuleScreen> createState() => _RuleScreenState();
}

class _RuleScreenState extends State<RuleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text(
            'Правила',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 150,
              width: 500,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/assets/images/rule.gif"))),
            ),
            const Text(
              'ALIAS BIBLE - Прекрасная игра для христианской компании',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            // Container(
            //   margin: EdgeInsets.only(left: 30,right: 30,top: 5,bottom: 5),
            Column(
              children: const [
                SizedBox(height: 20),
                TextForRule(
                  description:
                      ' Будь христианином, не думай как \n обойти систему, НЕ ОБМАНЫВАЙ',
                  iconForDescription: Icon(
                    Icons.church,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                SizedBox(height: 20),
                TextForRule(
                  description:
                      'Задача каждого игрока - объяснить, \nкак можно больше слов товарищам \nпо команде за ограниченное время.',
                  iconForDescription: Icon(
                    Icons.psychology,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
                SizedBox(height: 20),
                TextForRule(
                  description:
                      ' При объяснения не использовать\n однокоренные слова,не озвучивать\n перевод с иностранных ЯЗЫКОВ.',
                  iconForDescription: Icon(
                    Icons.cancel,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                SizedBox(height: 20),
                TextForRule(
                  description:
                      ' Отгаданное слово приносит команде\n один балл, а за пропущенное слово\n команда штрафуется (в зависимости\n от настроек).',
                  iconForDescription: Icon(
                    Icons.library_add_check,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                SizedBox(height: 20),
                TextForRule(
                  description:
                      ' Победителем становится команда,\n у которой количество баллов достигло\n заранее поставленного лимита.',
                  iconForDescription: Icon(
                    Icons.emoji_events,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const ButtonLikeAndShare(name: 'нравится игра?', size: 40),
            const SizedBox(height: 50),
          ],
        ));
  }
}
