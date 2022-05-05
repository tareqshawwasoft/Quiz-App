import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>>question;
  final int count;
  final VoidCallback answerQuestion;
Quiz(this.question,this.count,this.answerQuestion);

@override
Widget build(BuildContext context) {
return  Column(
children: [
Question(question[count]['questionText'].toString()),
...(question[count]['answers'] as List<String>).map((answer){
return Answer(answerQuestion, answer);
}).toList(),
],
);
}
}