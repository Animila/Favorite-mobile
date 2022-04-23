import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;

  Answer({Key? key, required this.answerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: null,
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(answerText),
      ),
    );
  }
}
