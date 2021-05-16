import 'package:flutter/material.dart';
import 'package:howsort/visualizer/constants.dart';
import 'package:howsort/Misc/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
  

import 'resulequiz.dart';
import 'quizclass.dart';
import 'package:firebase_auth/firebase_auth.dart';


    
class MyAppQuiz extends StatefulWidget {
  @override
  _MyAppQuizState createState() => _MyAppQuizState();
}

class _MyAppQuizState extends State<MyAppQuiz> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   if( FirebaseAuth.instance.currentUser == null)
     {
       /*Navigator.push(context, MaterialPageRoute(
         builder: (context) => LoginPage(),
       ),   );
       Navigator.of(context).popAndPushNamed("/login");*/
     }
  }
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
  Future<void> _authDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Error'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This email is not registered'),
                Text('Please try with another email ID'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).popAndPushNamed("/login");
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: newcolor1,
          centerTitle: true,
          title:  Text(
                  "HowSort",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'Yatra_One',
                  ),
                ),
        ),
        body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
           Align(
          alignment: Alignment.topCenter,
            
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(' Quiz ',textAlign: TextAlign.center ,style: TextStyle(fontFamily: 'Yatra_One',fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple), ),
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
