import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice App'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void numberGenerator() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 2,
          ),
          Text(
            'Click to \'Roll Dice\'',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            children: [
              Expanded(
                  child: FlatButton(
                onPressed: () {
                  numberGenerator();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              )),
              Expanded(
                  child: FlatButton(
                onPressed: () {
                  numberGenerator();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ))
            ],
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
