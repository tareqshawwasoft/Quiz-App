import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_20190221/quiz.dart';
import 'package:quiz_app_20190221/result.dart';
main()=> runApp(MyApp());
class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}
Color white= Colors.white;
Color black= Colors.black;
class _MyAppState extends State<MyApp> {

  bool isSwitched= false;
  int _count=0;
  int _total_score=0;
  resetIndex(){
   setState(() {
     _total_score=0;
     _count=0;
   });
 }
  answerQuestion(int  score){
    _total_score+=score;
   setState(() {
     _count+=1;
   });


 }
 // Map for the list to save information of the questions.
  final List<Map<String, Object>> question=[
    {'questionText': 'What\'s the chemical formula for water',
    'answers': [
        {'text':'H2O', 'score':20},
      {'text':'HO', 'score':0},
      {'text':'H2Na', 'score':0},
      {'text':'O2', 'score':0},
    ]
    },
    {'questionText': 'What is the capital of Palestine',
      'answers': [
        {'text':'Jerusalem', 'score':20},
        {'text':'Cairo', 'score':0},
        {'text':'Kiev', 'score':0},
        {'text':'Moscow', 'score':0},
      ]
    },
    {'questionText': 'What is 2+9 equal to',
      'answers': [
        {'text':'10', 'score':0},
        {'text':'15', 'score':0},
        {'text':'11', 'score':20},
        {'text':'29', 'score':0},
      ]
    },
    {'questionText': 'What is 7*0',
      'answers': [
        {'text':'70', 'score':0},
        {'text':'182', 'score':0},
        {'text':'7', 'score':0},
        {'text':'0', 'score':20},
      ]
    },
    {'questionText': 'Synonym for \'Hi\'',
      'answers': [
        {'text':'Bye', 'score':0},
        {'text':'Hello', 'score':20},
        {'text':'Good morning', 'score':0},
        {'text':'Good evening', 'score':0},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.purple.shade600,
          title:  Text(
            'quiz app ',
            style: TextStyle(color: white),
          ),
          actions:  [
            Switch(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched=value;
                  if(isSwitched==true){
                  black=Colors.white;
                  white=Colors.black;
                  }
                  else{
                    white=Colors.white;
                    black=Colors.black;
                  }
                });
            },
            ),
          ],
        ),
        body: Container(
            color: white,
          child: _count<question.length?
              Quiz(question, _count, answerQuestion):
         Result(resetIndex, _total_score)
      ),
    ));
  }
}
