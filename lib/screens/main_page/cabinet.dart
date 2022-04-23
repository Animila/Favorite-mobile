import 'package:favorite/screens/main_page/home.dart';
import 'package:favorite/screens/info.dart';
import 'package:flutter/material.dart';

class CabinetPage extends StatelessWidget {
  const CabinetPage({Key? key}) : super(key: key);

  Widget _profileInfo() {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 30, right: 30),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Image(
                  image: AssetImage('assets/images/photo_default_student.png')),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 317,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xffbe9428),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Имя: Неробов Максим Николаевич",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Группа: ВОДВ 113",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Категория: B",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _progressSourse() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        width: 317,
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffbe9428),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 7),
              child: Text(
                "Процесс прохождения курса",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffc8ffae),
                  fontSize: 16,
                  fontFamily: "Times New Roman",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      width: 272,
                      height: 24,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff08961f),
                            Color(0xff099720),
                            Color(0x0009e6b1)
                          ],
                        ),
                      ),
                      child: const LinearProgressIndicator(
                        value: 0.23,
                        backgroundColor: Color(0xffbe9428),
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(9, 151, 32, 1)),
                      ),
                    ),
                  ),
                  const Align(
                    child: Center(
                      child: Text("23%",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _countlesson() {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 30, right: 30),
        child: Column(
          children: [
            Container(
              width: 317,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xffbe9428),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Кол-во часов практики (всего) - 25",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Пройдено - 6",
                    style: TextStyle(
                      color: Color(0xffc8ffae),
                      fontSize: 16,
                      fontFamily: "Times New Roman",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _history() {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          const SizedBox(
            child: Text(
              "История занятий",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Table(
                columnWidths: {
                  0: FlexColumnWidth(),
                  1: FlexColumnWidth(),
                  2: FlexColumnWidth()
                },
                children: const [
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Дата'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Время'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Инструктор'),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('20.12.21'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('9:25'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Христофоров И.В',
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('17.01.22'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('18:30'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Христофоров И.В',
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ])
                ],
                border: TableBorder.all(width: 1, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _teacher() {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        children: const [
          SizedBox(
            child: Text(
              "Куратор",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 41,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Image(
                image: AssetImage('assets/images/photo_default_teacher.png')),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Text(
              'Христофоров Илья Вячеславович',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Text(
              '+7(924)-123-45-67',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(225, 176, 48, 1),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Кабинет'),
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
        backgroundColor: Color.fromRGBO(225, 176, 48, 1),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _profileInfo(),
              _progressSourse(),
              _countlesson(),
              _history(),
              _teacher()
            ],
          ),
        ),
      ),
    );
  }
}
