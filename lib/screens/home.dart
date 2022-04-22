import 'package:favorite/screens/cabinet.dart';
import 'package:favorite/screens/example.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;

  List<Widget> widgetList = const [ExamplesTest(), CabinetPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetList[index]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (_index) {
          setState(() {
            index = _index;
          });
        },
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ads_click), label: 'Тесты'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: 'Профиль'),
          BottomNavigationBarItem(
              icon: Icon(Icons.schedule), label: 'Расписание'),
        ],
      ),
    );
  }
}
