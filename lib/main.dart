import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontFamily: 'Bangers',
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 23.0,
          ),
        ),
        backgroundColor: Colors.deepOrange[900],
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
  int ballNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNo = Random().nextInt(5) + 1;
            print('Ball No = $ballNo');
          });
        },
        child: Image.asset('images/ball$ballNo.png'),
      ),
    );
  }
}
