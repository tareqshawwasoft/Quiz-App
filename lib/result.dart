import 'package:flutter/material.dart';
import 'package:quiz_app_20190221/main.dart';
class Result  extends StatelessWidget {
final Function() reset;
final int result;
Result(this.reset, this.result);

String get resultPhrase{
  String resultText;
  if (result >=90){
    resultText = "Perfecto! ^_^";
  }
  else if(result >=70){
    resultText = "Okay!";
  }
  else {
    resultText = "Try Again! :( ";
  }
  return resultText;
}
@override
Widget build(BuildContext context) {
return  Center(
child: Column(
children: [
 Text(
" $result", style: TextStyle(fontSize: 40, color: black),
),
  Text(
    " $resultPhrase", style: TextStyle(fontSize: 30, color: black),
  ),
ElevatedButton(onPressed: reset, child:  Text('Restart'
, style: TextStyle(fontSize: 30, color: black),
),
)
],
),

);
}
}