import 'package:flutter/material.dart';
import 'package:quiz_app_20190221/question.dart';
import 'package:quiz_app_20190221/answer.dart';
import 'package:quiz_app_20190221/main.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>>question;
  final int count;
  final Function(int  s) answerQuestion;
Quiz(this.question,this.count,this.answerQuestion);

@override
Widget build(BuildContext context) {
return  Column(
children: [
Question(question[count]['questionText'].toString()),
...(question[count]['answers'] as List<Map<String, Object>>).map((answer){
return Answer(() => answerQuestion(int.parse(answer['score'].toString())), answer['text'].toString());
}).toList(),
],
);
}
}