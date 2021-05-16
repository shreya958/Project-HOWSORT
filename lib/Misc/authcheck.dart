
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:howsort/Misc/login.dart';
import 'package:howsort/Misc/profile.dart';
import 'package:howsort/quiz/quizmain.dart';
import'package:howsort/Misc/top_bar.dart';


/*class authcheck {

  String check(String op) {
    String uid = FirebaseAuth.instance.currentUser.uid.toString();
    if (uid == null) {
      LoginPage();
    }
    else {
       if (op == "user") {
        profile();
      }
      else if (op == "quiz") {
        MyAppQuiz();
      }
    }
  }

}*/
class authcheck extends StatefulWidget {
  authcheck({Key key}) : super(key: key);

  @override
  _authcheckState createState() => _authcheckState();
}
class _authcheckState extends State<authcheck> {
  Future<Widget> _authDialog() async {
    return showDialog<Widget>(
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
  Widget build(BuildContext context){
    return Container(

      child: AlertDialog(
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
              Navigator.of(context).pop();
            },
          ),
        ],
      ) ,
    );
  }
}


