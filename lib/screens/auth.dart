import 'package:favorite/main.dart';
import 'package:favorite/screens/main_page/cabinet.dart';
import 'package:favorite/screens/main_page/home.dart';
import 'package:flutter/material.dart';

// определение страницы авторизации
class AuthorizationPage extends StatefulWidget {
  @override
  AuthorizationPage({Key? key}) : super(key: key);

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passController = TextEditingController();

    String _email;
    String _password;
    bool showlogin = true;

    Widget _input(
        Icon icon, String hint, TextEditingController controller, bool secret) {
      return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          controller: controller,
          obscureText: secret,
          style: TextStyle(fontSize: 20, color: Colors.white),
          decoration: InputDecoration(
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white30),
              hintText: hint,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 3),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white54, width: 1),
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: IconTheme(
                  data: IconThemeData(color: Colors.white),
                  child: icon,
                ),
              )),
        ),
      );
    }

    Widget _sublogo() {
      return Padding(
        padding: EdgeInsets.only(top: 100),
        child: Container(
          child: const Align(
            child: Text(
              "Негосударственное образовательное учреждение\nУчебный центр",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
        ),
      );
    }

    Widget _logo() {
      return Padding(
        padding: EdgeInsets.only(top: 20),
        child: Container(
            child: const Align(
          child: Text(
            "Фаворит",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xffff0000),
              fontSize: 60,
            ),
          ),
        )),
      );
    }

    Widget _bottonlogo() {
      return Padding(
        padding: EdgeInsets.only(top: 5),
        child: Container(
            child: const Align(
          child: Text(
            "mobile",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xffff0000),
              fontSize: 30,
            ),
          ),
        )),
      );
    }

    Widget _button(String text, void func()) {
      return RaisedButton(
        splashColor: Theme.of(context).primaryColor,
        highlightColor: Theme.of(context).primaryColor,
        color: Color.fromRGBO(219, 51, 51, 1),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
              fontSize: 20),
        ),
        onPressed: () {
          func();
        },
      );
    }

    Widget _form(String label, void func()) {
      return Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20, top: 10),
              child:
                  _input(Icon(Icons.email), "Логин", _emailController, false),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: _input(Icon(Icons.lock), "Пароль", _passController, true),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: _button(label, func),
              ),
            )
          ],
        ),
      );
    }

    void _buttonAction() {
      _email = _emailController.text;
      _password = _passController.text;

      _emailController.clear();
      _passController.clear();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }

    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffe1af2f),
          fontFamily: "Times New Roman"),
      home: Scaffold(
        body: Center(
          child: SizedBox(
            child: Column(
              children: <Widget>[
                _sublogo(),
                _logo(),
                _bottonlogo(),
                Column(
                  children: <Widget>[
                    _form('Войти', _buttonAction),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
