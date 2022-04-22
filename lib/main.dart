//подключаем концепцию/подход UI
import 'package:favorite/screens/landing.dart';
import 'package:flutter/material.dart';

//точка входа в приложение (базовый скелет)
void main() => runApp(FavoruteApp());

class FavoruteApp extends StatelessWidget {
  //context - параметры компонетов
  @override
  Widget build(BuildContext context) {
    // основа приложения
    return MaterialApp(
        title: 'Фаворит Мобайл',
        theme: ThemeData(
          primaryColor: Color.fromRGBO(225, 176, 48, 1),
          textTheme: TextTheme(titleMedium: TextStyle(color: Colors.white)),
        ),
        home: LandingPage());
  }
}
