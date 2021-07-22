import 'dart:ui';

import 'package:flutter/material.dart';
import 'Question_answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> niceList = [];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    Question_Answers a = new Question_Answers();
    List<String> questions = a.Questions();
    List<String> answers = a.Answers();
    questions.add("Nice try");
    String currQuestion = questions[counter];
    return MaterialApp(
        title: 'Unsafe app',
        home: Scaffold(
            appBar: AppBar(
                title: Text('Thou Shall not Pass'),
                backgroundColor: Colors.red[500]),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue[400],
                    child: Text("$currQuestion",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold)),
                    padding: EdgeInsets.all(80),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    setState(() {
                      if (answers[counter] == "True") {
                        niceList.add(
                            Icon(Icons.check, color: Colors.green, size: 30));
                        counter++;
                        currQuestion = questions[counter];
                      } else {
                        niceList.add(
                            Icon(Icons.close, color: Colors.red, size: 30));
                        counter++;
                        currQuestion = questions[counter];
                      }
                    })
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black, padding: EdgeInsets.all(50)),
                  child: Text("True",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[500])),
                ),
                ElevatedButton(
                  onPressed: () => {
                    setState(() {
                      if (answers[counter] == "False") {
                        niceList.add(
                            Icon(Icons.check, color: Colors.green, size: 30));
                        counter++;
                        currQuestion = questions[counter];
                      } else {
                        niceList.add(
                            Icon(Icons.close, color: Colors.red, size: 30));
                        counter++;
                        currQuestion = questions[counter];
                      }
                    })
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black, padding: EdgeInsets.all(50)),
                  child: Text("False",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red[500])),
                ),
                Row(
                  children: niceList,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                )
              ],
            )));
  }
}
