import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: BallPage(),
    ));

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text(
            'Ask me anything',
          )),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;

  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print('ball number is: $ballNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          changeBallNumber();
        },
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image.asset('images/ball$ballNumber.png'),
            )
          ],
        ),
      ),
    );
  }
}
