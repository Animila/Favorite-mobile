import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  Widget _fromaddress() {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 5, right: 5),
      child: Column(
        children: const [
          Text('Адрес: 677000, г.Якутск, ул. Кирова 28, офис 503'),
          Image(
            image: AssetImage('assets/images/info_img.jpg'),
          )
        ],
      ),
    );
  }

  Widget _hellotitle() {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 40, left: 3, right: 3),
          child: Text(
            'Негосударственное образовательное учреждение организации дополнительного профессионального образования \nУчебный Центр',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          '"Фаворит"',
          style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 0, 0, 1),
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        Text(
          'работает в сфере образования в г. Якутске и г. Покровск Хангаласского района с 2011 года',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _what() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            'Почему выбирают нас?',
            style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(255, 0, 0, 1),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
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
          title: Text('Информация о компании'),
          backgroundColor: Color.fromRGBO(219, 51, 51, 1),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.support),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(225, 176, 48, 1),
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: _fromaddress(),
            ),
            _hellotitle(),
            _what(),
          ]),
        ),
      ),
    );
  }
}
