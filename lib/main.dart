import 'package:flutter/material.dart';
import 'package:quiz_app_20190221/answer.dart';
import 'package:quiz_app_20190221/question.dart';
main()=> runApp(MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 static int _count=0;
 void answerQuestion(){
   setState(() {
     _count+=1;
   });
   if(_count==4)_count=0;
   print(_count);

 }
  final question=[
    'What\'s your favorite color',
    'What\'s your favorite animal',
    'What\'s your favorite city',
    'What\'s your favorite country',
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
          child: Column(
            children: [
              Question(question[_count]),
              Answer(answerQuestion ,'yes'),
              const SizedBox(
                height: 10.0,
              ),
              Answer(answerQuestion,'no'),
              const SizedBox(
                height: 10.0,
              ),
              Answer(answerQuestion,'maybe'),
            ],
          ),

        ),
      ),
    );
  }
}
