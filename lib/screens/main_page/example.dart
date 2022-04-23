import 'package:favorite/screens/info.dart';
import 'package:favorite/screens/question.dart';
import 'package:flutter/material.dart';

class ExamplesTest extends StatelessWidget {
  const ExamplesTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(225, 176, 48, 1),
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(225, 176, 48, 1),
        appBar: AppBar(
          title: Text('Тесты'),
          backgroundColor: Color.fromRGBO(219, 51, 51, 1),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.support),
            ),
            IconButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InfoPage()))
              },
              icon: Icon(Icons.info),
            ),
          ],
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Container(
                    width: constraints.maxWidth,
                    height: 50,
                    decoration: BoxDecoration(color: Colors.white),
                    child: MaterialButton(
                      materialTapTargetSize:
                          MaterialTapTargetSize.shrinkWrap, // Add this
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          "Билет №1",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 30),
                        ),
                      ),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuestionPage()))
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
