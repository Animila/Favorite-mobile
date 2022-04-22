import 'package:favorite/screens/auth.dart';
import 'package:favorite/screens/cabinet.dart';
import 'package:favorite/screens/home.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isLoggedIn = false;
    return isLoggedIn ? HomePage() : AuthorizationPage();
  }
}
