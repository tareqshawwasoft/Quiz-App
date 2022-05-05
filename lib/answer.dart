import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback  callback;
  Answer(
      this.callback,
      this.answerText,
      );
@override
Widget build(BuildContext context) {
return Container(
width: double.infinity,

child: Column(
  children: [
    SizedBox(
      height: 10,
    ),
    ElevatedButton(
      style: ButtonStyle(

          backgroundColor: MaterialStateProperty.all(Colors.lightBlue.shade900),
          padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
      child: Text(answerText, style: TextStyle(color: Colors.white, fontSize: 25)),
      onPressed: callback,
    )
  ],
)
);
}
}