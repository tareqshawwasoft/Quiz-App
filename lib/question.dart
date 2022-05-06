import 'package:flutter/material.dart';
import 'package:quiz_app_20190221/main.dart';
class Question  extends StatelessWidget {
  final String questionText;
 Question(this.questionText);

@override
Widget build(BuildContext context) {
return Container(
width: double.infinity,
margin: const EdgeInsets.all(10.0),
child:
Text(questionText, style:  TextStyle(fontSize: 25, color: black),
    textAlign: TextAlign.center,
),

);
}
}