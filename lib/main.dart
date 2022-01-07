import 'package:flutter/material.dart';
import 'dart:math';


void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Widget> oPtion_check(option)
  {
    var hello;
    var  icons_color;
    if(option == Icons.check)
      {
        hello = Icons.check;
        icons_color =Colors.green;

      }
    else
      {
        hello=Icons.clear;
        icons_color=Colors.red;
      }
    return <Widget>[
        Icon(
          hello,
          color:icons_color,
          size:20.0,
        ),
    ];
      /*  Icon(
          hello,
          color:icons_color,
          size:11.0,
        )*/
  }

  int q_no=0;
  List<String> question = [
    'Hello word is the first statement typed ',
    'This is vishalv is vishal vinay ram',
    'I am a student from uvce',
    'This is the text for random',
    'text 2 for random',

  ];
  bool correct;
  void printing()
  {
    print("hello world");
  }
  List<bool> answers=[
    true,
    false,
    true,
    false,
    true

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                question[q_no],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
             // onLongPress: oPtion_check(),
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                correct = answers[q_no];
                if(correct == true )
                  {
                    oPtion_check(Icons.check);
                  }
                else
                  {
                    oPtion_check(Icons.clear);
                  }
                setState(() {
                    {
                      q_no = q_no+1;
                      printing();
                      oPtion_check(Icons.check);
                    }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {//The user picked false.
                correct =answers[q_no];
                if(correct=='false')
                  {
                   oPtion_check(Icons.check);
                   setState(() {
                     oPtion_check(Icons.check);
                   });
                  }
                else {
                  oPtion_check(Icons.clear);
                  setState(() {
                    oPtion_check(Icons.clear);
                  });
                };
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        /*Row(
          children: <Widget>[
            Icon(
             Icons.check,
             color:Colors.green,
              size:11.0,
            ),
            Icon(
              Icons.clear,
              color:Colors.red,
              size:11.0,
            )
          ],
        )*/
        Row(
          children: [
            //oPtion_check(Icons.check),
            //oPtion_check(Icons.clear),
           ])

      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
