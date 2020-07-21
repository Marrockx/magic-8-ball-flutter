import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent.shade400,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade700,
        title: Text(
          'Did You Know?',
        ),
        centerTitle: true,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  String text1 = 'Elephant is ';
  String text2 = 'Lions are deadly.';
  String text3;
  String text4;
  String text5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          FlatButton(
            onPressed: () {
              getQuestion();
            },
            child: Image.asset('images/ball$ballNumber.png'),
            shape: CircleBorder(
              side: BorderSide.none,
            ),
          ),
          Text(text1),
        ],
      ),
    );
  }

  void getQuestion() {
    //do Something
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
