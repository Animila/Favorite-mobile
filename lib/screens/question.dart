// ignore_for_file: prefer_const_declarations

import 'package:favorite/answer.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int _questIndex = 0;
  int _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1/10'),
        backgroundColor: Color.fromRGBO(219, 51, 51, 1),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.support),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 10, left: 30, right: 30),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    data[_questIndex]['question'] as String,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
                // ...data[_questIndex]['options']
                //     .map((value) => Answer(
                //           answerText: value['text'],
                //         ))
                //     .toList(),
                Answer(answerText: data[_questIndex]['options'].toString()),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 40),
                    ),
                    onPressed: () => setState(
                          (() => _questIndex++),
                        ),
                    child: Text('Следующий вопрос'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final data = const [
  {
    "question": "Что означает термин «Обгон»?",
    "options": [
      'Опережение одного или нескольких транспортных средств, связанное с выездом на полосу (сторону проезжей части), предназначенную для встречного движения, и последующим возвращением на ранее занимаемую полосу (сторону проезжей части).',
      'Опережение одного или нескольких транспортных средств, связанное с выездом из занимаемой полосы.',
      'Любое опережение одного или нескольких транспортных средств.',
    ],
  },
  {
    "question":
        "Разрешается ли водителю продолжить движение после переключения зеленого сигнала светофора на желтый, если возможно остановиться перед перекрестком, только применив экстренное торможение?",
    "options": {
      {'text': 'Разрешается', 'score': true},
      {
        'text':
            'Разрешается, если водитель намерен проехать перекресток только в прямом направлении',
        'score': false,
      },
      {
        'text': 'Запрещается',
        'score': false,
      },
    },
  },
  // {
  //   "question":
  //       "Какие ограничения, относящиеся к обгону, действуют на железнодорожных переездах и вблизи них?",
  //   "options": {
  //     'Обгон запрещен только на переезде.',
  //     'Обгон запрещен на переезде и ближе чем за 100 м перед ним.',
  //     'Обгон запрещен на переезде и на расстоянии 100 м до и после него.'
  //   },
  //   "answer_index": 2,
  // },
];
