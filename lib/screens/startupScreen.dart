import 'dart:async';

import 'package:favorite/screens/landing.dart';

import 'auth.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LandingPage()));
    });
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: SizedBox(
            width: 375,
            height: 667,
            child: Material(
              color: Colors.white,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 375,
                    height: 667,
                    child: Material(
                      color: Color(0xffe1af2f),
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 155,
                              height: 174,
                              child: Image(
                                  image: AssetImage('assets/images/logo.png')),
                            ),
                            SizedBox(height: 300),
                            SizedBox(
                              child: Text(
                                "From\nШашлычки\n",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Times New Roman",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
