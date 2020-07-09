import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int dicenoleft = Random().nextInt(6), diceright = Random().nextInt(6);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                Randomgenerate();
              },
              child: Image.asset('images/dice$diceright.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                Randomgenerate();
              },
              child: Image.asset('images/dice$dicenoleft.png'),
            ),
          ),
        ],
      ),
    );
  }
  void Randomgenerate(){
      setState(
            () {
          diceright = Random().nextInt(6)+1;
          dicenoleft = Random().nextInt(6)+1;
        },
      );
  }
}
