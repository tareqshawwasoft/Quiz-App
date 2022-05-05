import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_20190221/answer.dart';
import 'package:quiz_app_20190221/question.dart';
import 'package:quiz_app_20190221/quiz.dart';
import 'package:quiz_app_20190221/result.dart';
main()=> runApp(MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count=0;
  resetIndex(){
   setState(() {
     _count=0;
   });
 }
  answerQuestion(){
   setState(() {
     _count+=1;
   });

   print(_count);

 }
 // Map for the list to save information of the questions.
  final List<Map<String, Object>> question=[
    {'questionText': 'What\'s the chemical formula for water',
    'answers': ['H2O', 'HO', 'OH','O2H']
    },
    {'questionText': 'What\'s 1+1',
      'answers': ['2', '1', '5','7']
    },
    {'questionText': 'What\'s your favorite city ',
      'answers': ['Gaza', 'Rafah', 'Khan Younis','Der el balah']
    },
    {'questionText': 'What\'s your favorite country',
      'answers': ['Palestine', 'Russia', 'UAE','Japan']
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'quiz app'
          ),
        ),
        body: Container(
          child: _count<question.length?
              Quiz(question, _count, answerQuestion):
         Result(resetIndex)
      ),
    ));
  }
}
