import 'package:flutter/material.dart';
import 'main.dart';
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

          backgroundColor: MaterialStateProperty.all(Colors.lightBlue.shade400),
          padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30, color: white)
          )
      ),
      child: Text(answerText, style: TextStyle(color: white, fontSize: 25)),
      onPressed: callback,
    )
  ],
)
);
}
}