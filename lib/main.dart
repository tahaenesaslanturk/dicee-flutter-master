import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Dicee',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonNumber = 1;
  int rightButtonNumber = 1;

  void changeDiceFaceNum() {
    setState(() {
      leftButtonNumber = Random().nextInt(6) + 1;
      rightButtonNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFaceNum();
              },
              child: Image.asset(
                "images/dice$leftButtonNumber.png",
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFaceNum();
              },
              child: Image.asset(
                "images/dice$rightButtonNumber.png",
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
