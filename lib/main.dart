import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyEightBall());

class MyEightBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text("Ask Me Anything"),
          ),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNum = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNum.png'),
        ),
      ),
    );
  }
}
