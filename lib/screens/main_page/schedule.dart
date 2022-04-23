import 'package:favorite/screens/info.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(225, 176, 48, 1),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Расписание'),
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
          body: null),
    );
  }
}
