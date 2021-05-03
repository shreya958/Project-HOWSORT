import 'package:flutter/material.dart';
import 'package:howsort/visualizer/constants.dart';
  

import 'resulequiz.dart';
import 'quizclass.dart';
    
class MyAppQuiz extends StatefulWidget {
  @override
  _MyAppQuizState createState() => _MyAppQuizState();
}

class _MyAppQuizState extends State<MyAppQuiz> {
  final _questions = const [
    {
      'questionText': 'Q1. What is the worst case complexity of bubble sort?',
      'answers': [
        {'text': 'O(nlogn)', 'score': 0},
        {'text': 'O(logn)', 'score': 0},
        {'text': ' O(n2)', 'score': 1},
        {'text': 'O(n)', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. Assume that we use Bubble Sort to sort n distinct elements in ascending order. When does the best case of Bubble Sort occur?',
      'answers': [
        {'text': 'When elements are sorted in descending order', 'score': 0},
        {'text': '	When elements are not sorted by any order', 'score': 0},
        {'text': 'There is no best case for Bubble Sort. It always takes O(n*n) time', 'score': 0},
        {
          'text':
              'When elements are sorted in ascending order',
          'score': 1
        },
      ],
    },
    {
      'questionText': ' Q3.The number of swappings needed to sort the numbers 8, 22, 7, 9, 31, 5, 13 in ascending order, using bubble sort is',
      'answers': [
        {'text': '11', 'score': 0},
        {'text': '10', 'score': 1},
        {'text': '12', 'score': 0},
        {'text': '13', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4. Which of the following sorting algorithms has the lowest worst-case complexity',
      'answers': [
        {'text': 'Merge Sort', 'score': 1},
        {'text': 'Heap sort', 'score': 0},
        {'text': 'Bubble Sort', 'score': 0},
        {'text': 'Insertion Sort', 'score': 0},
      ],
    },
    {
      'questionText':
          'Q5. In a selection sort structure, there is/are?', 'answers': [
        {
          'text': 'Two separate for loops',
          'score': 0,
        },
        { 'text':'Three for loops, all separate', 'score': 0},
        {'text': 'Two for loops, one nested in the othe', 'score': 1},
        {'text': 'A for loop nested inside a while loop', 'score': 1},
      ],
    },
  ];
  
  var _questionIndex = 0;
  var _totalScore = 0;
  
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  
  void _answerQuestion(int score) {
    _totalScore += score;
  
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('HowSort'),
          backgroundColor: newcolor1
        ),
        body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
           Align(
          alignment: Alignment.topCenter,
            
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(' Quiz ',textAlign: TextAlign.center ,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple), ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ),
          ] 
        )
        )
        //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}